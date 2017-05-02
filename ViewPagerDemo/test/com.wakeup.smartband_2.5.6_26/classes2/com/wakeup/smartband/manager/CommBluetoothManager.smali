.class public Lcom/wakeup/smartband/manager/CommBluetoothManager;
.super Ljava/lang/Object;
.source "CommBluetoothManager.java"

# interfaces
.implements Lcom/wakeup/smartband/callback/IBleConnectCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/manager/CommBluetoothManager$resetConnectThread;
    }
.end annotation


# static fields
.field private static DEVICE_ADDRESS:Ljava/lang/String; = null

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final DEVICE_TYPE:I = 0x2

.field private static final SCAN_TEIME_DEF:I = 0x2710

.field private static mInstance:Lcom/wakeup/smartband/manager/CommBluetoothManager;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBluetoothService:Lcom/wakeup/smartband/service/BluetoothLeService;

.field public mContext:Landroid/content/Context;

.field private mGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mGattCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mLoadingDialog:Lcom/het/comres/view/dialog/CommonLoadingDialog;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string/jumbo v0, ""

    sput-object v0, Lcom/wakeup/smartband/manager/CommBluetoothManager;->DEVICE_ADDRESS:Ljava/lang/String;

    return-void
.end method

