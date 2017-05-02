.class public Lcom/wakeup/smartband/ble_service/BleService;
.super Landroid/app/Service;
.source "BleService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ble_service/BleService$LocalBinder;,
        Lcom/wakeup/smartband/ble_service/BleService$DataFromActivityReceiver;
    }
.end annotation


# static fields
.field public static final CCCD:Ljava/util/UUID;

.field public static final DIS_UUID:Ljava/util/UUID;

.field public static final FIRMWARE_REVISON_UUID:Ljava/util/UUID;

.field private static final FREE:I = 0x0

.field private static final RECEIVING:I = 0x2

.field public static final RX_CHAR_UUID:Ljava/util/UUID;

.field public static final RX_SERVICE_UUID:Ljava/util/UUID;

.field private static final SENDING:I = 0x1

.field private static final SEND_PACKET_SIZE:I = 0x14

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I

.field private static final TAG:Ljava/lang/String;

.field public static final TX_CHAR_UUID:Ljava/util/UUID;

.field public static final TX_POWER_LEVEL_UUID:Ljava/util/UUID;

.field public static final TX_POWER_UUID:Ljava/util/UUID;


# instance fields
.field private CONNECT_DEVICE:I

.field private CONNECT_Gatt:I

.field private STOP_SCAN:I

.field private TIMER_INTERVAL:I

.field private TIME_OUT_LIMIT:I

.field private bleDataHandler:Lcom/wakeup/smartband/ble_service/BleDataHandler;

.field private ble_status:I

.field public dataFromActivityReceiver:Lcom/wakeup/smartband/ble_service/BleService$DataFromActivityReceiver;

.field public data_queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final_packet:Z

.field private first_packet:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBtReceiver:Landroid/content/BroadcastReceiver;

.field private mConnecting:Z

.field private mConnectionState:I

.field private mForceDisconnectd:Z

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mHandler:Landroid/os/Handler;

.field private mScanAddress:Ljava/lang/String;

.field private mScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z

.field private mTimer:Ljava/util/Timer;

.field private packet_counter:I

.field private packet_send:Z

.field private send_data:[B

.field private send_data_pointer:I

.field sendingStoredData:Z

.field private time_out_counter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/wakeup/smartband/ble_service/BleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->TAG:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "00001804-0000-1000-8000-00805f9b34fb"

    .line 72
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->TX_POWER_UUID:Ljava/util/UUID;

    .line 73
    const-string/jumbo v0, "00002a07-0000-1000-8000-00805f9b34fb"

    .line 74
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->TX_POWER_LEVEL_UUID:Ljava/util/UUID;

    .line 75
    const-string/jumbo v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 76
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->CCCD:Ljava/util/UUID;

    .line 77
    const-string/jumbo v0, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 78
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->FIRMWARE_REVISON_UUID:Ljava/util/UUID;

    .line 79
    const-string/jumbo v0, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 80
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->DIS_UUID:Ljava/util/UUID;

    .line 81
    const-string/jumbo v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    .line 82
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->RX_SERVICE_UUID:Ljava/util/UUID;

    .line 83
    const-string/jumbo v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    .line 84
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->RX_CHAR_UUID:Ljava/util/UUID;

    .line 85
    const-string/jumbo v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    .line 86
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ble_service/BleService;->TX_CHAR_UUID:Ljava/util/UUID;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .registers 5

