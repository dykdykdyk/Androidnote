angular.module('ufind1.controllers')
    .controller('mainCtrl', function ($rootScope, $scope,$location,$ionicHistory,$state, $ionicPopup, $timeout, $translate, $stateParams,$ionicBackdrop, $ionicPlatform,
        bleService, deviceService,systemService, connectedService,userService,decService,sleepType,sleepTime,stepService,dialogsManager) {
        var currentPlatform = ionic.Platform.platform();
        if (currentPlatform == "android") {
            $ionicPlatform.registerBackButtonAction(function (e) {
                console.log("$location.path()"+$location.path());
               if($location.path() == '/main'|| $location.path() == '/login'){
                   bleService.isConnected("");
                }else if($location.path() == '/sportHistory'|| $location.path() == '/MothSportHistory'||$location.path() == '/YearSportHistory'
                   ||$location.path() == '/sleepHistory'||$location.path() == '/MothSleepHistory'||$location.path() == '/YearSleepHistory'||
                   $location.path() == '/heartHistory'||$location.path() == '/MothHeartHistory'||$location.path() == '/YearHeartHistory'||
                   $location.path() == '/temperatureHistory'||$location.path() == '/mothTemperatureHistory'||$location.path() == '/yearTemperatureHistory'){
                   $state.go("main");
               }else if($location.path() == '/set_time'|| $location.path() == '/userdata'){
                   $ionicBackdrop.release();
                   $ionicHistory.goBack();
               }
                else if ($ionicHistory.backView()) {
                    //TODO 回收键盘
                    $ionicHistory.goBack();
                } else {
//                    bleService.isConnected("");
                    console.log("login---3")
                }
            }, 101);
        }
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        //初始化数据
        var system = systemService.deserialize();
        var deviceBond = deviceService.deserialize();

        $scope.isSendCmd = true;

        $translate.use(system.language);
        /**连接*/
        $scope.connected_text = $translate.instant('connected_text');
        $scope.disconnected = $translate.instant('disconnected');

        $scope.$on('dec.connected',function(event,data){
            console.log("$broadcast main 连接中....")
            connectedService.is_connected = true;
            $scope.showMessage($scope.connected_text);

            $scope.title = $translate.instant('status1')
        });
        /**断开连接*/
        $scope.$on('dec.disconnected',function(event,data){
            console.log("$broadcast main 断开连接....");
            connectedService.is_connected = false;
            $scope.showMessage($scope.disconnected);
            $scope.title = $translate.instant('status2')
        });

        /*连接设备*/
         function connectDevice (dev) {
            //；Android 平台连接前必须扫描，避免中途关闭蓝牙连不上
            console.log("currentPlatform...."+currentPlatform);
            if (currentPlatform == "android") {
                console.log("a................................")
                bleService.bleRefresh(dev.id,"cmdBLE",1).then(function (result_ble) {
                    console.log("1.cmdBLE---->" + JSON.stringify(result_ble));
                }, function (result_ble) {
                    console.log("2.cmdBLE---->" + JSON.stringify(result_ble));
                }, function (result_ble) {
                    console.log("3.cmdBLE---->" + JSON.stringify(result_ble.st));
                    if(result_ble.st == "yes"){
                        bleService.scan_device_by_id(dev.id,40).then(function(success) {
                            console.log(" 1.扫描指定id...." + success);
                            bleService.connect(dev.id,2).promise.then(function (result2) {
                            }, function (result2) {
                                console.log("连接2...." + JSON.stringify(result2));
                            }, function (result2) {
                                console.log("连接3...." + JSON.stringify(result2));
                                if (result2.status == "connected") {
                                    user_data.isSendOut = true
                                    $scope.title = $translate.instant('status1')
                                    connectedService.is_connected = true;
//                                    $scope.onClickSports();
                                    send();
                                    $rootScope.$broadcast('dec.connected','m');
                                } else if (result2.status == "disconnected") {
                                    connectedService.is_connected = false;
                                    $rootScope.$broadcast('dec.disconnected','m');
                                    $scope.title = $translate.instant('status2')
                                }else{
                                    connectedService.is_connected = false;
                                    $rootScope.$broadcast('dec.disconnected','m');
                                    $scope.title = $translate.instant('status2')
                                }
                            });
                        },function(error){
                            console.log(" 2.扫描指定id...." + error);
                        },function(result){
                            console.log(" 3.扫描指定id...." + result);
                        });
                    }
                });
            }else if(currentPlatform == "ios"){
                bleService.connect(dev.id).promise.then(function (result2) {
                }, function (result2) {
                }, function (result2) {
                    console.log("连接...." + JSON.stringify(result2));
                    if (result2.status == "connected") {
                        connectedService.is_connected = true;
//                        $scope.onClickSports();
                        send();
                        $rootScope.$broadcast('dec.connected','m');
                    } else if (result2.status == "disconnected") {
                        connectedService.is_connected = false;
                        $rootScope.$broadcast('dec.disconnected','m');
                    }else{
                        connectedService.is_connected = false;
                        $rootScope.$broadcast('dec.disconnected','m');
                    }
                });
            }

        };
        var dec =  decService.deserialize();
        var user_data  = userService.all();

        if(user_data.device_temp ==1){
            $scope.device_temp = true
        }else{
            $scope.device_temp = true
        }
        $scope.title = null;
        if( connectedService.is_connected){
            $scope.title = $translate.instant('status1')
        }else{
            $scope.title = $translate.instant('status2')
        }

        $ionicPlatform.ready(function () {
            dec =  decService.all();
            console.log("dec"+JSON.stringify(dec));

            $scope.sms = {
                fall:user_data.fall_alarm ? "1" : "0",
                number:user_data.number,
                message: user_data.message
            }
            if(typeof(dec) != "undefined" & dec.id != ""){
                bleService.setOption("", "cmdSms", user_data.isSms ? "1" : "0")
                bleService.setOption("", "cmdCall", user_data.isCall ? "1" : "0")
                bleService.setOption("", "cmdFallAlarm", $scope.sms)
                connectDevice(dec);
            }
        });

        /**头部导航事件*/
        $scope.onClickSetting = function () {
            $state.go("main_setting");
        };
        $scope.share = 1;
        $scope.onClickShare = function () {
            if($scope.share == 1){
                $scope.share = 0;
                bleService.dataRefresh("","cmdShare",1).then(function (result) {
                    console.log("cmdShare---->" + JSON.stringify(result));
                    $scope.share = 1;
                }, function (result) {
                    console.log("cmdShare---->" + JSON.stringify(result));
                    $scope.share = 1;
                }, function (result) {
                    console.log("cmdShare---->" + JSON.stringify(result));
                    $scope.share = 1;
                });
            }
//            $scope.showMessage();
            console.log("分享...")
        };
        /**实时数据*/
         $scope.step = user_data.totalSteps;
         $scope.heartdata = user_data.heart;
         $scope.temperaturedata = user_data.temp;
         $scope.sleep = user_data.sleep;
         $scope.atmospheric = user_data.atmospheric ;
         $scope.ambientTemp = user_data.ambientTemp  ;
         $scope.altitude = user_data.altitude  ;
         $scope.blood_pressure = user_data.blood_pressure;
         $scope.blood_oxygen = user_data.blood_oxygen;
         $scope.breathe = user_data.breathe;

        //连接的蓝牙
        var device_now = decService.all();
        if (typeof(device_now) != 'undefined') {
            $scope.deviceId = device_now.id; //蓝牙id
        }
        $scope.isSpend = 1;
        var ste = stepService.deserializeStep();
        var tie = stepService.deserializeData();
        $scope.onClickSports = function () {
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdStep").then(function (result) {
                }, function (result) {
                }, function (result) {
//                    if(result.totalSteps){
                        $scope.step = result.totalSteps;
                        user_data.totalSteps = $scope.step;
                        user_data.totalDistance = result.totalDistance;
                        user_data.totalCalory = result.totalCalory;
//                    }
                    if($scope.isSpend == 1 && $scope.isSendCmd){
                        $scope.onClickAtmospheric();
//                            $scope.onClickT();
                        $scope.isSpend = 0;
                    }
                });
            }
        };
        $scope.onClickSportsed = function (){
            $state.go("sportHistory");
        };
        /**睡眠*/
        var sleep_type = sleepType.deserialize();
        var sleep_time = sleepTime.deserialize();
        $scope.isSpendS = 1;
        //睡眠数据
        $scope.onClickSleep = function () {
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdSleep").then(function (result) {
                }, function (result) {
                }, function (result) {
                    console.log("onClickSleep = "+ JSON.stringify(result))
//                    if(result.min){
                       $scope.sleep = (result.hour + result.min/60).toFixed(2) ;
                       user_data.sleep = $scope.sleep;
//                    }
                    if($scope.isSpendS == 1 && $scope.isSendCmd){
                        $scope.onClickOxygen();
                        $scope.isSpendS =0;

                    }
                });

            }

        };
        $scope.onClickSleepEd = function () {
            $state.go("sleepHistory");
//            $scope.showMessage($scope.hideTde);
        };
        $scope.is_spendT = 1;
        /**心率*/
        $scope.onClickHeart = function () {
            if (connectedService.is_connected ) {
                bleService.dataRefresh($scope.deviceId, "cmdHeart").then(function (result) {
                }, function (result) {
                }, function (result) {
//                    if(result.heart){
                        $scope.heartdata = result.heart;
                        user_data.heart = $scope.heartdata;
//                    }
                    if($scope.is_spendT == 1 && $scope.isSendCmd){
                        $scope.onClickSports();
                        $scope.is_spendT = 0;
                    }
                });
            }
        };

        $scope.onClickHearted = function () {
            $state.go("heartHistory");
        };
        $scope.is_spendSleep = 1;

        /**环境温度*/
        $scope.onClickT = function () {
            console.log("实时温度");
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdTemperature").then(function (result) {
                }, function (result) {
                }, function (result) {
//                    if(result.temperature){
                        $scope.temperaturedata = result.temperature ;
                        user_data.temp = $scope.temperaturedata
//                    }
                    if($scope.is_spendSleep == 1 && $scope.isSendCmd){
                        $scope.onClickSleep();
                        $scope.is_spendSleep = 0;
                    }
                });
            }
        };
        $scope.hideTde =  $translate.instant('hideTde');
        $scope.onClickTde = function () {
            console.log("历史温度");
            $state.go("temperatureHistory");
//            $scope.showMessage($scope.hideTde);
        };
        $scope.is_spendAmbientTemp = 1;
//        实时气压
        $scope.onClickAtmospheric = function(){
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdAtmospheric").then(function (result) {
                }, function (result) {
                }, function (result) {
//                    if(result.atmospheric){
                        $scope.atmospheric = result.atmospheric.toFixed(2);
                        $scope.ambientTemp = result.ambientTemp ;
                        $scope.altitude = result.altitude.toFixed(1);
                        user_data.altitude =  $scope.altitude;
                        user_data.atmospheric = $scope.atmospheric
                        user_data.ambientTemp = $scope.ambientTemp
//                    }
                    if($scope.is_spendAmbientTemp == 1 && $scope.isSendCmd){
                        $scope.onClickT();
                        $scope.is_spendAmbientTemp = 0;
                    }
                });
            }
        }
        $scope.onClickAtmosphericEd = function () {
            $scope.showMessage($scope.hideTde);
        };
//      血压
        $scope.onClickBP = function(){
            console.log("实时呼吸");
            $scope.onClickOxygen();
        }

        $scope.onClickBPed = function(){
            console.log("历史血压");
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdBPed").then(function (result) {
                }, function (result) {
                }, function (result) {

                });
            }
        }
        /*血氧*/
        $scope.onClickOxygen = function(){
            console.log("实时血氧");
            if (connectedService.is_connected) {
                bleService.dataRefresh($scope.deviceId, "cmdOxygen").then(function (result) {
                    console.log("onClickSleep = "+ JSON.stringify(result))
                    console.log("血氧 111 ="+JSON.stringify(result));
                }, function (result) {
                    console.log("血氧 222 ="+JSON.stringify(result));
                }, function (result) {
                    $scope.blood_oxygen =result.blood_oxygen ;
                    $scope.breathe=result.breathe;
                    $scope.blood_pressure=result.blood_pressure;
                    console.log("$scope.blood_oxygen ="+ $scope.blood_oxygen);
                    console.log(" $scope.breathe ="+  $scope.breathe);
                    console.log("$scope.blood_pressure ="+ $scope.blood_pressure);
                    console.log("血氧 333 ="+JSON.stringify(result));
                });
            }
        }
        /*呼吸*/
        $scope.onClickBreathe = function(){
            $scope.onClickOxygen();
            console.log("实时呼吸");
        }



        function send (){
            $scope.is_spendAmbientTemp = 1;
            $scope.is_spendSleep = 1;
            $scope.is_spendT = 1;
            $scope.isSpendS = 1;
            $scope.isSpend = 1;

            if(connectedService.is_connected){
                $timeout(function() {
                    $scope.onClickHeart();
                }, 2 * 100);
                $scope.onClickOxygen();
            }
            user_data.isSendOut = false
        }
        send();
        //是否需要发送请求实时数据
//        if(user_data.isSendOut){

//        }
        $scope.$on('$ionicView.beforeLeave',function(){
            $scope.isSendCmd = false;
            userService.serialize();
        })
        $scope.showMessage= function (text) {
            dialogsManager.showMessage(text);
        }
    });



