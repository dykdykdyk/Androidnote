//
//  BLECentralPlugin.m
//  BLE Central Cordova Plugin
//
//  (c) 2104-2015 Don Coleman
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "BLECentralPlugin.h"
#import <Cordova/CDV.h>
#import <AudioToolbox/AudioToolbox.h>

#define degreesToRadians(x) (M_PI * x / 180.0)
#define radiansToDegrees(x) (x * (180.0 / M_PI))
#define EARTH_RADIUS 6371009.0;

@interface BLECentralPlugin()
- (CBPeripheral *)findPeripheralByUUID:(NSString *)uuid;
- (void)stopScanTimer:(NSTimer *)timer;
@end

@implementation BLECentralPlugin

@synthesize manager;
@synthesize peripherals;

- (void)pluginInitialize {

    NSLog(@"Cordova BLE Central Plugin");
    NSLog(@"(c)2014-2015 Don Coleman");

    [super pluginInitialize];

    peripherals = [NSMutableSet set];
    manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];

    connectCallbacks = [NSMutableDictionary new];
    connectCallbackLatches = [NSMutableDictionary new];
    readRSSICallbacks = [NSMutableDictionary new];
    readCallbacks = [NSMutableDictionary new];
    writeCallbacks = [NSMutableDictionary new];
    notificationCallbacks = [NSMutableDictionary new];
    stopNotificationCallbacks = [NSMutableDictionary new];
    deviceArray = [[NSMutableArray alloc] init];
}

#pragma mark - Cordova Plugin Methods

- (void)connect:(CDVInvokedUrlCommand *)command {

    NSLog(@"connect");
    NSString *uuid = [command.arguments objectAtIndex:0];
    NSLog(@"%@", uuid);
    CBPeripheral *peripheral = [self findPeripheralByUUID:uuid];

    if (peripheral) {
        NSLog(@"Connecting to peripheral with UUID : %@", uuid);

        [connectCallbacks setObject:[command.callbackId copy] forKey:[peripheral uuidAsString]];
        [manager connectPeripheral:peripheral options:nil];

    } else {
        NSString *error = [NSString stringWithFormat:@"Could not find peripheral %@.", uuid];
        NSLog(@"%@", error);
        CDVPluginResult *pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:error];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }

}

// disconnect: function (device_id, success, failure) {
- (void)disconnect:(CDVInvokedUrlCommand*)command {
    NSLog(@"disconnect");

    NSString *uuid = [command.arguments objectAtIndex:0];
    CBPeripheral *peripheral = [self findPeripheralByUUID:uuid];

    [connectCallbacks removeObjectForKey:uuid];

    if (peripheral && peripheral.state != CBPeripheralStateDisconnected) {
        [manager cancelPeripheralConnection:peripheral];
    }

    // always return OK
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
    [peripherals removeObject:peripheral];
}

// read: function (device_id, service_uuid, characteristic_uuid, success, failure) {
- (void)read:(CDVInvokedUrlCommand*)command {
    NSLog(@"read");

    BLECommandContext *context = [self getData:command prop:CBCharacteristicPropertyRead];
    if (context) {

        CBPeripheral *peripheral = [context peripheral];
        CBCharacteristic *characteristic = [context characteristic];

        NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
        [readCallbacks setObject:[command.callbackId copy] forKey:key];

        [peripheral readValueForCharacteristic:characteristic];  // callback sends value
    }

}

// write: function (device_id, service_uuid, characteristic_uuid, value, success, failure) {
- (void)write:(CDVInvokedUrlCommand*)command {

    BLECommandContext *context = [self getData:command prop:CBCharacteristicPropertyWrite];
    NSData *message = [command.arguments objectAtIndex:3]; // This is binary
    if (context) {

        if (message != nil) {

            CBPeripheral *peripheral = [context peripheral];
            CBCharacteristic *characteristic = [context characteristic];

            NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
            [writeCallbacks setObject:[command.callbackId copy] forKey:key];

            // TODO need to check the max length
            [peripheral writeValue:message forCharacteristic:characteristic type:CBCharacteristicWriteWithResponse];

            // response is sent from didWriteValueForCharacteristic

        } else {
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"message was null"];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        }
    }

}

// writeWithoutResponse: function (device_id, service_uuid, characteristic_uuid, value, success, failure) {
- (void)writeWithoutResponse:(CDVInvokedUrlCommand*)command {
    NSLog(@"writeWithoutResponse");

    BLECommandContext *context = [self getData:command prop:CBCharacteristicPropertyWriteWithoutResponse];
    NSData *message = [command.arguments objectAtIndex:3]; // This is binary

    if (context) {
        CDVPluginResult *pluginResult = nil;
        if (message != nil) {
            CBPeripheral *peripheral = [context peripheral];
            CBCharacteristic *characteristic = [context characteristic];

            // TODO need to check the max length
            [peripheral writeValue:message forCharacteristic:characteristic type:CBCharacteristicWriteWithoutResponse];

            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"message was null"];
        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

// success callback is called on notification
// notify: function (device_id, service_uuid, characteristic_uuid, success, failure) {
- (void)startNotification:(CDVInvokedUrlCommand*)command {
    NSLog(@"registering for notification");

    BLECommandContext *context = [self getData:command prop:CBCharacteristicPropertyNotify]; // TODO name this better

    if (context) {
        CBPeripheral *peripheral = [context peripheral];
        CBCharacteristic *characteristic = [context characteristic];

        NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
        NSString *callback = [command.callbackId copy];
        [notificationCallbacks setObject: callback forKey: key];

        [peripheral setNotifyValue:YES forCharacteristic:characteristic];

    }

}

// stopNotification: function (device_id, service_uuid, characteristic_uuid, success, failure) {
- (void)stopNotification:(CDVInvokedUrlCommand*)command {
    NSLog(@"registering for notification");

    BLECommandContext *context = [self getData:command prop:CBCharacteristicPropertyNotify]; // TODO name this better

    if (context) {
        CBPeripheral *peripheral = [context peripheral];
        CBCharacteristic *characteristic = [context characteristic];

        NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
        NSString *callback = [command.callbackId copy];
        [stopNotificationCallbacks setObject: callback forKey: key];

        [peripheral setNotifyValue:NO forCharacteristic:characteristic];
        // callback sent from peripheral:didUpdateNotificationStateForCharacteristic:error:

    }

}

- (void)isEnabled:(CDVInvokedUrlCommand*)command {

    CDVPluginResult *pluginResult = nil;
    int bluetoothState = [manager state];

    BOOL enabled = bluetoothState == CBCentralManagerStatePoweredOn;

    if (enabled) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsInt:bluetoothState];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)scan:(CDVInvokedUrlCommand*)command {

    NSLog(@"scan");
    
    discoverPeripherialCallbackId = [command.callbackId copy];

    NSArray *serviceUUIDStrings = [command.arguments objectAtIndex:0];
    NSNumber *timeoutSeconds = [command.arguments objectAtIndex:1];
    NSMutableArray *serviceUUIDs = [NSMutableArray new];

    for (int i = 0; i < [serviceUUIDStrings count]; i++) {
        CBUUID *serviceUUID =[CBUUID UUIDWithString:[serviceUUIDStrings objectAtIndex: i]];
        [serviceUUIDs addObject:serviceUUID];
    }

    [manager scanForPeripheralsWithServices:serviceUUIDs options:nil];

    [NSTimer scheduledTimerWithTimeInterval:[timeoutSeconds floatValue]
                                     target:self
                                   selector:@selector(stopScanTimer:)
                                   userInfo:[command.callbackId copy]
                                    repeats:NO];

}

- (void)startScan:(CDVInvokedUrlCommand*)command {

    NSLog(@"startScan");
    NSLog(@"command.callbackId %@", command.callbackId);
    discoverPeripherialCallbackId = [command.callbackId copy];
    NSArray *serviceUUIDStrings = [command.arguments objectAtIndex:0];
    NSMutableArray *serviceUUIDs = [NSMutableArray new];

    for (int i = 0; i < [serviceUUIDStrings count]; i++) {
        CBUUID *serviceUUID =[CBUUID UUIDWithString:[serviceUUIDStrings objectAtIndex: i]];
        [serviceUUIDs addObject:serviceUUID];
    }

    [manager scanForPeripheralsWithServices:serviceUUIDs options:nil];

}

- (void)stopScan:(CDVInvokedUrlCommand*)command {

    NSLog(@"stopScan");

    [manager stopScan];

    if (discoverPeripherialCallbackId) {
        discoverPeripherialCallbackId = nil;
    }

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}


- (void)isConnected:(CDVInvokedUrlCommand*)command {

    CDVPluginResult *pluginResult = nil;
    CBPeripheral *peripheral = [self findPeripheralByUUID:[command.arguments objectAtIndex:0]];

    if (peripheral && peripheral.state == CBPeripheralStateConnected) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Not connected"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getRSSI:(CDVInvokedUrlCommand*)command{
    NSLog(@"RSSI");
    NSString *deviceAddress = [command.arguments objectAtIndex:0];
    CBPeripheral *peripheral = [self findPeripheralByUUID:deviceAddress];
    [readRSSICallbacks setValue:command.callbackId forKey:[peripheral uuidAsString]];
    
    if (peripheral) {
        peripheral.delegate = self;
        [peripheral readRSSI];
    }else{
        
        NSString *errorMessage = [NSString stringWithFormat:@"Could not find peripherial with UUID %@", deviceAddress];
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errorMessage];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

- (void)setOption:(CDVInvokedUrlCommand*)command {
    DeviceModel *model = [[DeviceModel alloc] init];
    model.deviceId = command.arguments[0];
    model.deviceCmd = command.arguments[1];
    model.deviceValue = command.arguments[2];
    NSArray *array = [NSArray arrayWithArray:deviceArray];
    for (DeviceModel *deviceModel in array) {
        if ([deviceModel.deviceCmd isEqualToString:model.deviceCmd]) {
            [deviceArray removeObject:deviceModel];
        }
    }
    [deviceArray addObject:model];
}

#pragma mark - timers

-(void)stopScanTimer:(NSTimer *)timer {
    NSLog(@"stopScanTimer");

    [manager stopScan];

    if (discoverPeripherialCallbackId) {
        discoverPeripherialCallbackId = nil;
    }
}

#pragma mark - CBCentralManagerDelegate

- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI {

    [peripherals addObject:peripheral];
    [peripheral setAdvertisementData:advertisementData RSSI:RSSI];

    if (discoverPeripherialCallbackId) {
        CDVPluginResult *pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[peripheral asDictionary]];
        NSLog(@"Discovered %@", [peripheral asDictionary]);
        [pluginResult setKeepCallbackAsBool:TRUE];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:discoverPeripherialCallbackId];
    }

}

- (void)centralManagerDidUpdateState:(CBCentralManager *)central
{
    NSLog(@"Status of CoreBluetooth central manager changed %ld %@", (long)central.state, [self centralManagerStateToString: central.state]);

    if (central.state == CBCentralManagerStateUnsupported)
    {
        NSLog(@"=============================================================");
        NSLog(@"WARNING: This hardware does not support Bluetooth Low Energy.");
        NSLog(@"=============================================================");
    }
}

- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {

    NSLog(@"didConnectPeripheral");

    peripheral.delegate = self;

    // NOTE: it's inefficient to discover all services
    [peripheral discoverServices:nil];
    for (DeviceModel *deviceModel in deviceArray){
        NSString *uuid =  [peripheral.identifier UUIDString];
        if ([deviceModel.deviceId isEqualToString:uuid]){
            if ([deviceModel.deviceCmd isEqualToString:@"cmdReconnectAlert"]){
                if ([deviceModel.deviceValue isEqualToString:@"1"]) {
                    [self reconnectSound];
                }
            }
        }
    }

    // NOTE: not calling connect success until characteristics are discovered
}
- (void)reconnectSound{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"reconnect" ofType:@"m4a"];
    SystemSoundID soundID;
    NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)filePath, &soundID);
    AudioServicesPlaySystemSound(soundID);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error {
    NSLog(@"didDisconnectPeripheral");
    
    NSString *connectCallbackId = [connectCallbacks valueForKey:[peripheral uuidAsString]];
   // [connectCallbacks removeObjectForKey:[peripheral uuidAsString]];
    
    if (connectCallbackId) {
        CDVPluginResult *pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:[peripheral asDictionary]];
        [pluginResult setKeepCallbackAsBool:TRUE];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:connectCallbackId];
    }
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:0];
    notification.timeZone=[NSTimeZone defaultTimeZone];
    notification.applicationIconBadgeNumber = 1; //设置右上角小圆圈数字为1
    notification.alertBody = @"蓝牙断开了";
    [[UIApplication sharedApplication]  scheduleLocalNotification:notification];
    
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *now;
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSWeekdayCalendarUnit| NSHourCalendarUnit |NSMinuteCalendarUnit;
    now=[NSDate date];
    comps = [calendar components:unitFlags fromDate:now];

    NSUInteger weekDay = comps.weekday;
    NSInteger hour = comps.hour;
    NSInteger minute = comps.minute;
    
    NSString *uuid =  [peripheral.identifier UUIDString];
    BOOL onRemind = [self whetherOnRemind:uuid];
    BOOL onTime = [self whetherDisturb];
    BOOL time1 = [self getSlientOneWeekDay:weekDay Hour:hour minute:minute];
    BOOL time2 = [self getSlientTwoWeekDay:weekDay Hour:hour minute:minute];
    BOOL time = onTime || (time1 && time2);
    
    BOOL onArea = [self wheatherArea];
    BOOL oneArea = [self getOneAreaRadius];
    BOOL twoArea = [self getTwoAreaRadius];
    BOOL threeArea = [self getThreeAreaRadius];
    BOOL area = onArea || (oneArea && twoArea && threeArea);
    
    if (onRemind && (time && area)) {
        [NSThread detachNewThreadSelector:@selector(playSystemSound) toTarget:self withObject:nil];
    }
    
   // sleep(5);
    
    [manager connectPeripheral:peripheral options:nil];
    
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    [locationManager stopUpdatingLocation];
    coordinate = newLocation.coordinate;
    NSLog(@"输出当前的精度和纬度");
    NSLog(@"精度：%f 纬度：%f",coordinate.latitude,coordinate.longitude);
}

#pragma mark -- Helper Mehtod
- (BOOL)whetherOnRemind:(NSString *)uuid{
    for (DeviceModel *deviceModel in deviceArray){
        NSLog(@"%@, %@", uuid, deviceModel.deviceId);
        if ([deviceModel.deviceId isEqualToString:uuid]) {
            if ([deviceModel.deviceCmd isEqualToString:@"cmdAppAlert"]) {
                if ([deviceModel.deviceValue isEqualToString:@"0"]) {
                    return 0;
                }else{
                    return 1;
                }
            }
        }
    }
    return 0;
}

- (BOOL)whetherDisturb{
    for (DeviceModel *deviceModel in deviceArray){
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentTime"]) {
            if ([deviceModel.deviceValue isEqualToString:@"0"]) {
                return 1;
            }else{
                return 0;
            }
        }
    }
    return 1;
}

- (BOOL)getSlientOneWeekDay:(NSUInteger)weekDay Hour:(NSInteger)hour minute:(NSInteger)minute{
    NSInteger startHour1;
    NSInteger startMinute1;
    NSInteger stopHour1;
    NSInteger stopMinute1;
    NSArray *weekArray = [[NSArray alloc] init];
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStartHour1"]) {
            startHour1 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStartMinute1"]) {
            startMinute1 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStopHour1"]) {
            stopHour1 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStopMinute1"]) {
            stopMinute1 = deviceModel.deviceValue.integerValue;
        }
        NSLog(@"deviceCmd1:%@", deviceModel.deviceCmd);
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentWeekDay1"]) {
            NSInteger num = deviceModel.deviceValue.integerValue;
            NSString *week1 = [NSString stringWithFormat:@"%d", (num & 1) >>0];
            NSString *week2 = [NSString stringWithFormat:@"%d", (num & 2) >>1];
            NSString *week3 = [NSString stringWithFormat:@"%d", (num & 4) >>2];
            NSString *week4 = [NSString stringWithFormat:@"%d", (num & 8) >>3];
            NSString *week5 = [NSString stringWithFormat:@"%d", (num & 16) >>4];
            NSString *week6 = [NSString stringWithFormat:@"%d", (num & 32) >>5];
            NSString *week7 = [NSString stringWithFormat:@"%d", (num & 64) >>6];
            NSLog(@"%@, %@, %@, %@, %@, %@, %@", week1, week2, week3, week4, week5, week6, week7);
            weekArray = @[week1, week2, week3, week4, week5, week6, week7];
            for (NSUInteger i = 0; i < 7; i++) {
                if (weekDay-1 == i) {
                    NSLog(@"%@", weekArray[i]);
                    if ([weekArray[i] isEqualToString:@"1"]) {
                        if (hour > startHour1 && hour < stopHour1) {
                            return 0;
                        }else if (hour == startHour1 && hour == stopHour1){
                            if (minute > startMinute1 && minute < stopMinute1) {
                                return 0;
                            }else{
                                return 1;
                            }
                        }else if (hour == startHour1 && hour < stopHour1){
                            if (minute > startMinute1){
                                return 0;
                            }else{
                                return 1;
                            }
                        }else if (hour > startHour1 && hour == stopHour1){
                            if (minute < stopMinute1){
                                return 0;
                            }
                        }else{
                            return 1;
                        }
                    }
                }
            }
        }
    }
    return 0;
}
- (BOOL)getSlientTwoWeekDay:(NSUInteger)weekDay Hour:(NSInteger)hour minute:(NSInteger)minute{
    NSInteger startHour2;
    NSInteger startMinute2;
    NSInteger stopHour2;
    NSInteger stopMinute2;
    NSArray *weekArray = [[NSArray alloc] init];
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStartHour2"]) {
            startHour2 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStartMinute2"]) {
            startMinute2 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStopHour2"]) {
            stopHour2 = deviceModel.deviceValue.integerValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentStopMinute2"]) {
            stopMinute2 = deviceModel.deviceValue.integerValue;
        }
        NSLog(@"deviceCmd2:%@", deviceModel.deviceCmd);
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentWeekDay2"]) {
            NSInteger num = deviceModel.deviceValue.integerValue;
            NSString *week1 = [NSString stringWithFormat:@"%d", (num & 1) >>0];
            NSString *week2 = [NSString stringWithFormat:@"%d", (num & 2) >>1];
            NSString *week3 = [NSString stringWithFormat:@"%d", (num & 4) >>2];
            NSString *week4 = [NSString stringWithFormat:@"%d", (num & 8) >>3];
            NSString *week5 = [NSString stringWithFormat:@"%d", (num & 16) >>4];
            NSString *week6 = [NSString stringWithFormat:@"%d", (num & 32) >>5];
            NSString *week7 = [NSString stringWithFormat:@"%d", (num & 64) >>6];
            NSLog(@"%@, %@, %@, %@, %@, %@, %@", week1, week2, week3, week4, week5, week6, week7);
            weekArray = @[week1, week2, week3, week4, week5, week6, week7];
            for (NSUInteger i = 0; i < 7; i++) {
                if (weekDay-1 == i) {
                    NSLog(@"%@", weekArray[i]);
                    if ([weekArray[i] isEqualToString:@"1"]) {
                        if (hour > startHour2 && hour < stopHour2) {
                            return 0;
                        }else if (hour == startHour2 && hour == stopHour2){
                            if (minute > startMinute2 && minute < stopMinute2) {
                                return 0;
                            }else{
                                return 1;
                            }
                        }else if (hour == startHour2 && hour < stopHour2){
                            if (minute > startMinute2){
                                return 0;
                            }else{
                                return 1;
                            }
                        }else if (hour > startHour2 && hour == stopHour2){
                            if (minute < stopMinute2){
                                return 0;
                            }
                        }else{
                            return 1;
                        }
                    }
                }
            }
        }
    }
    return 0;
}

- (BOOL)wheatherArea{
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea"]) {
            if ([deviceModel.deviceValue isEqualToString:@"0"]) {
                return 1;
            }else{
                return 0;
            }
        }
    }
    return 1;
}
- (BOOL)getOneAreaRadius{
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea1x0"]) {
            NSLog(@"Area1Lon:%@", deviceModel.deviceValue);
            destination.longitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea1y0"]) {
            destination.latitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea1Radius"]) {
            NSLog(@"Area1Radius:%@", deviceModel.deviceValue);
            NSLog(@"destination:%f, %f", destination.latitude, destination.longitude);
            double redius = deviceModel.deviceValue.doubleValue;
            double lat1 = degreesToRadians(coordinate.latitude);
            double lon1 = degreesToRadians(coordinate.longitude);
            double lat2 = degreesToRadians(destination.latitude);
            double lon2 = degreesToRadians(destination.longitude);
            double R = EARTH_RADIUS;
            double dLat = lat2 - lat1;
            double dLon = lon2 - lon1;
            double a = sin(dLat / 2.0) * sin(dLat / 2.0) + cos(lat1) * cos(lat2) * sin(dLon / 2.0) * sin(dLon / 2.0);
            double c = 2.0 * atan2(sqrt(a), sqrt(1.0 - a));
            double d = R * c;
            NSLog(@"d: %lf", d);
            if (d > redius) {
                return 1;
            }else{
                return 0;
            }
        }
    }
    return 0;
}

- (BOOL)getTwoAreaRadius {
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea2x0"]) {
            NSLog(@"Area2Lon:%@", deviceModel.deviceValue);
            destination.longitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea2y0"]) {
            destination.latitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea2Radius"]) {
            NSLog(@"Area2Radius:%@", deviceModel.deviceValue);
            NSLog(@"destination:%f, %f", destination.latitude, destination.longitude);
            double redius = deviceModel.deviceValue.doubleValue;
            double lat1 = degreesToRadians(coordinate.latitude);
            double lon1 = degreesToRadians(coordinate.longitude);
            double lat2 = degreesToRadians(destination.latitude);
            double lon2 = degreesToRadians(destination.longitude);
            double R = EARTH_RADIUS;
            double dLat = lat2 - lat1;
            double dLon = lon2 - lon1;
            double a = sin(dLat / 2.0) * sin(dLat / 2.0) + cos(lat1) * cos(lat2) * sin(dLon / 2.0) * sin(dLon / 2.0);
            double c = 2.0 * atan2(sqrt(a), sqrt(1.0 - a));
            double d = R * c;
            NSLog(@"d: %lf", d);
            if (d > redius) {
                return 1;
            }else{
                return 0;
            }
        }
    }
     return 0;
}

- (BOOL)getThreeAreaRadius {
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea3x0"]) {
            NSLog(@"Area3Lon:%@", deviceModel.deviceValue);
            destination.longitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea3y0"]) {
            destination.latitude = deviceModel.deviceValue.doubleValue;
        }
        if ([deviceModel.deviceCmd isEqualToString:@"cmdSilentArea3Radius"]) {
            NSLog(@"Area3Radius:%@", deviceModel.deviceValue);
            NSLog(@"destination:%f, %f", destination.latitude, destination.longitude);
            double redius = deviceModel.deviceValue.doubleValue;
            double lat1 = degreesToRadians(coordinate.latitude);
            double lon1 = degreesToRadians(coordinate.longitude);
            double lat2 = degreesToRadians(destination.latitude);
            double lon2 = degreesToRadians(destination.longitude);
            double R = EARTH_RADIUS;
            double dLat = lat2 - lat1;
            double dLon = lon2 - lon1;
            double a = sin(dLat / 2.0) * sin(dLat / 2.0) + cos(lat1) * cos(lat2) * sin(dLon / 2.0) * sin(dLon / 2.0);
            double c = 2.0 * atan2(sqrt(a), sqrt(1.0 - a));
            double d = R * c;
            NSLog(@"d: %lf", d);
            if (d > redius) {
                return 1;
            }else{
                return 0;
            }
        }
    }
    return 0;
}

- (void)playSystemSound {
    for (DeviceModel *deviceModel in deviceArray) {
        if ([deviceModel.deviceCmd isEqualToString:@"cmdAlertTime"]) {
            for (NSInteger i = 0; i < deviceModel.deviceValue.integerValue/2; i++) {
                NSLog(@"deviceValue:%@", deviceModel.deviceValue);
                NSString *path = [[NSBundle mainBundle] pathForResource:@"alert1s" ofType:@"m4a"];
                SystemSoundID soundID;
                NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)filePath, &soundID);
                AudioServicesPlaySystemSound(soundID);
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
                sleep(2);
            }
        }
    }
}

- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error {

    NSLog(@"didFailToConnectPeripheral");

    NSString *connectCallbackId = [connectCallbacks valueForKey:[peripheral uuidAsString]];
    [connectCallbacks removeObjectForKey:[peripheral uuidAsString]];

    CDVPluginResult *pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:[peripheral asDictionary]];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:connectCallbackId];

}

#pragma mark CBPeripheralDelegate

- (void)peripheralDidUpdateRSSI:(CBPeripheral *)peripheral error:(NSError *)error{
    
    NSString *peripheralUUIDString = [peripheral uuidAsString];
    NSString *readRSSICallbackId = [readRSSICallbacks valueForKey:peripheralUUIDString];
    
    CDVPluginResult *pluginResult = nil;
    if (readRSSICallbackId) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:peripheral.RSSI.intValue];
        [pluginResult setKeepCallbackAsBool:TRUE];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:readRSSICallbackId];
    }
    
}
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {

    NSLog(@"didDiscoverServices");

    // save the services to tell when all characteristics have been discovered
    NSMutableSet *servicesForPeriperal = [NSMutableSet new];
    [servicesForPeriperal addObjectsFromArray:peripheral.services];
    [connectCallbackLatches setObject:servicesForPeriperal forKey:[peripheral uuidAsString]];

    for (CBService *service in peripheral.services) {
        NSLog(@"service %@", service);
        [peripheral discoverCharacteristics:nil forService:service]; // discover all is slow
    }
}

- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error {

    NSLog(@"didDiscoverCharacteristicsForService");

    NSString *peripheralUUIDString = [peripheral uuidAsString];
    NSString *connectCallbackId = [connectCallbacks valueForKey:peripheralUUIDString];
    NSMutableSet *latch = [connectCallbackLatches valueForKey:peripheralUUIDString];

    [latch removeObject:service];

    if ([latch count] == 0) {
        NSLog(@"*******************%@", connectCallbackId);
        if (connectCallbackId) {
            NSLog(@"*******************%@", connectCallbackId);
            CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[peripheral asDictionary]];
            [pluginResult setKeepCallbackAsBool:TRUE];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:connectCallbackId];
        }
        [connectCallbackLatches removeObjectForKey:peripheralUUIDString];
    }

    NSLog(@"Found characteristics for service %@", service);
    for (CBCharacteristic *characteristic in service.characteristics) {
        NSLog(@"Characteristic %@", characteristic);
    }

}

- (void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    NSLog(@"didUpdateValueForCharacteristic");

    NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
    NSString *notifyCallbackId = [notificationCallbacks objectForKey:key];

    if (notifyCallbackId) {
        NSData *data = characteristic.value; // send RAW data to Javascript
        NSLog(@"value:%@", characteristic.value);
        CDVPluginResult *pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
        [pluginResult setKeepCallbackAsBool:TRUE]; // keep for notification
        [self.commandDelegate sendPluginResult:pluginResult callbackId:notifyCallbackId];
    }

    NSString *readCallbackId = [readCallbacks objectForKey:key];

    if(readCallbackId) {
        NSData *data = characteristic.value; // send RAW data to Javascript

        CDVPluginResult *pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:readCallbackId];

        [readCallbacks removeObjectForKey:key];
    }
}

- (void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {

    NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
    NSString *notificationCallbackId = [notificationCallbacks objectForKey:key];
    NSString *stopNotificationCallbackId = [stopNotificationCallbacks objectForKey:key];

    CDVPluginResult *pluginResult = nil;

    // we always call the stopNotificationCallbackId if we have a callback
    // we only call the notificationCallbackId on errors and if there is no stopNotificationCallbackId

    if (stopNotificationCallbackId) {
        if (error) {
            NSLog(@"%@", error);
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:[error localizedDescription]];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:stopNotificationCallbackId];
        [stopNotificationCallbacks removeObjectForKey:key];
        [notificationCallbacks removeObjectForKey:key];

    } else if (notificationCallbackId && error) {

        NSLog(@"%@", error);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:[error localizedDescription]];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:notificationCallbackId];
    }

}


- (void)peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    // This is the callback for write

    NSString *key = [self keyForPeripheral: peripheral andCharacteristic:characteristic];
    NSString *writeCallbackId = [writeCallbacks objectForKey:key];

    if (writeCallbackId) {
        CDVPluginResult *pluginResult = nil;
        if (error) {
            NSLog(@"%@", error);
            pluginResult = [CDVPluginResult
                resultWithStatus:CDVCommandStatus_ERROR
                messageAsString:[error localizedDescription]
            ];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:writeCallbackId];
        [writeCallbacks removeObjectForKey:key];
    }

}

#pragma mark - internal implemetation

- (CBPeripheral*)findPeripheralByUUID:(NSString*)uuid {

    CBPeripheral *peripheral = nil;

    for (CBPeripheral *p in peripherals) {

        NSString* other = p.identifier.UUIDString;

        if ([uuid isEqualToString:other]) {
            peripheral = p;
            break;
        }
    }
    return peripheral;
}

// RedBearLab
-(CBService *) findServiceFromUUID:(CBUUID *)UUID p:(CBPeripheral *)p
{
    for(int i = 0; i < p.services.count; i++)
    {
        CBService *s = [p.services objectAtIndex:i];
        if ([self compareCBUUID:s.UUID UUID2:UUID])
        return s;
    }

    return nil; //Service not found on this peripheral
}

// Find a characteristic in service with a specific property
-(CBCharacteristic *) findCharacteristicFromUUID:(CBUUID *)UUID service:(CBService*)service prop:(CBCharacteristicProperties)prop
{
    NSLog(@"Looking for %@ with properties %lu", UUID, (unsigned long)prop);
    for(int i=0; i < service.characteristics.count; i++)
    {
        CBCharacteristic *c = [service.characteristics objectAtIndex:i];
        if ((c.properties & prop) != 0x0 && [c.UUID.UUIDString isEqualToString: UUID.UUIDString]) {
            return c;
        }
    }
   return nil; //Characteristic with prop not found on this service
}

// Find a characteristic in service by UUID
-(CBCharacteristic *) findCharacteristicFromUUID:(CBUUID *)UUID service:(CBService*)service
{
    NSLog(@"Looking for %@", UUID);
    for(int i=0; i < service.characteristics.count; i++)
    {
        CBCharacteristic *c = [service.characteristics objectAtIndex:i];
        if ([c.UUID.UUIDString isEqualToString: UUID.UUIDString]) {
            return c;
        }
    }
   return nil; //Characteristic not found on this service
}

// RedBearLab
-(int) compareCBUUID:(CBUUID *) UUID1 UUID2:(CBUUID *)UUID2
{
    char b1[16];
    char b2[16];
    [UUID1.data getBytes:b1];
    [UUID2.data getBytes:b2];

    if (memcmp(b1, b2, UUID1.data.length) == 0)
        return 1;
    else
        return 0;
}

// expecting deviceUUID, serviceUUID, characteristicUUID in command.arguments
-(BLECommandContext*) getData:(CDVInvokedUrlCommand*)command prop:(CBCharacteristicProperties)prop {
    NSLog(@"getData");

    CDVPluginResult *pluginResult = nil;

    NSString *deviceUUIDString = [command.arguments objectAtIndex:0];
    NSString *serviceUUIDString = [command.arguments objectAtIndex:1];
    NSString *characteristicUUIDString = [command.arguments objectAtIndex:2];

    CBUUID *serviceUUID = [CBUUID UUIDWithString:serviceUUIDString];
    CBUUID *characteristicUUID = [CBUUID UUIDWithString:characteristicUUIDString];

    CBPeripheral *peripheral = [self findPeripheralByUUID:deviceUUIDString];

    if (!peripheral) {

        NSLog(@"Could not find peripherial with UUID %@", deviceUUIDString);

        NSString *errorMessage = [NSString stringWithFormat:@"Could not find peripherial with UUID %@", deviceUUIDString];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errorMessage];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

        return nil;
    }

    CBService *service = [self findServiceFromUUID:serviceUUID p:peripheral];

    if (!service)
    {
        NSLog(@"Could not find service with UUID %@ on peripheral with UUID %@",
              serviceUUIDString,
              peripheral.identifier.UUIDString);

        NSString *errorMessage = [NSString stringWithFormat:@"Could not find service with UUID %@ on peripheral with UUID %@",
                                  serviceUUIDString,
                                  peripheral.identifier.UUIDString];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errorMessage];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

        return nil;
    }

    CBCharacteristic *characteristic = [self findCharacteristicFromUUID:characteristicUUID service:service prop:prop];

    // Special handling for INDICATE. If charateristic with notify is not found, check for indicate.
    if (prop == CBCharacteristicPropertyNotify && !characteristic) {
        characteristic = [self findCharacteristicFromUUID:characteristicUUID service:service prop:CBCharacteristicPropertyIndicate];
    }

    // As a last resort, try and find ANY characteristic with this UUID, even if it doesn't have the correct properties
    if (!characteristic) {
        characteristic = [self findCharacteristicFromUUID:characteristicUUID service:service];
    }

    if (!characteristic)
    {
        NSLog(@"Could not find characteristic with UUID %@ on service with UUID %@ on peripheral with UUID %@",
              characteristicUUIDString,
              serviceUUIDString,
              peripheral.identifier.UUIDString);

        NSString *errorMessage = [NSString stringWithFormat:
                                  @"Could not find characteristic with UUID %@ on service with UUID %@ on peripheral with UUID %@",
                                  characteristicUUIDString,
                                  serviceUUIDString,
                                  peripheral.identifier.UUIDString];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errorMessage];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

        return nil;
    }

    BLECommandContext *context = [[BLECommandContext alloc] init];
    [context setPeripheral:peripheral];
    [context setService:service];
    [context setCharacteristic:characteristic];
    return context;

}

- (NSString *) keyForPeripheral: (CBPeripheral *)peripheral andCharacteristic:(CBCharacteristic *)characteristic {
    return [NSString stringWithFormat:@"%@|%@", [peripheral uuidAsString], [characteristic UUID]];
}

#pragma mark - util

- (NSString*) centralManagerStateToString: (int)state
{
    switch(state)
    {
        case CBCentralManagerStateUnknown:
            return @"State unknown (CBCentralManagerStateUnknown)";
        case CBCentralManagerStateResetting:
            return @"State resetting (CBCentralManagerStateUnknown)";
        case CBCentralManagerStateUnsupported:
            return @"State BLE unsupported (CBCentralManagerStateResetting)";
        case CBCentralManagerStateUnauthorized:
            return @"State unauthorized (CBCentralManagerStateUnauthorized)";
        case CBCentralManagerStatePoweredOff:
            return @"State BLE powered off (CBCentralManagerStatePoweredOff)";
        case CBCentralManagerStatePoweredOn:
            return @"State powered up and ready (CBCentralManagerStatePoweredOn)";
        default:
            return @"State unknown";
    }

    return @"Unknown state";
}

@end
