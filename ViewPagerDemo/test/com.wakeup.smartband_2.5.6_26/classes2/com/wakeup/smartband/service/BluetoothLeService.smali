.class public Lcom/wakeup/smartband/service/BluetoothLeService;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/service/BluetoothLeService$LocalBinder;,
        Lcom/wakeup/smartband/service/BluetoothLeService$BLEConnectSuccess;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.example.bluetooth.le.EXTRA_DATA"

.field public static final SMART_BRACELET_MEASUREMENT:Ljava/util/UUID;

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mBleConnectSuccessCallback:Lcom/wakeup/smartband/service/BluetoothLeService$BLEConnectSuccess;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public mConnectedState:I

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/wakeup/smartband/service/BluetoothLeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/service/BluetoothLeService;->TAG:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->SMART_BRACELET:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/service/BluetoothLeService;->SMART_BRACELET_MEASUREMENT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

