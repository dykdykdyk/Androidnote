.class Lno/nordicsemi/android/dfu/LegacyDfuImpl;
.super Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;
.source "LegacyDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/LegacyDfuImpl$LegacyBluetoothCallback;
    }
.end annotation


# static fields
.field protected static final DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field protected static final DFU_PACKET_UUID:Ljava/util/UUID;

.field protected static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field private static final DFU_STATUS_SUCCESS:I = 0x1

.field protected static final DFU_VERSION:Ljava/util/UUID;

.field private static final OP_CODE_ACTIVATE_AND_RESET:[B

.field private static final OP_CODE_ACTIVATE_AND_RESET_KEY:I = 0x5

.field private static final OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

.field private static final OP_CODE_INIT_DFU_PARAMS_KEY:I = 0x2

.field private static final OP_CODE_INIT_DFU_PARAMS_START:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_KEY:I = 0x11

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x8

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE_KEY:I = 0x3

.field private static final OP_CODE_RESET:[B

.field private static final OP_CODE_RESET_KEY:I = 0x6

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x10

.field private static final OP_CODE_START_DFU:[B

.field private static final OP_CODE_START_DFU_KEY:I = 0x1

.field private static final OP_CODE_VALIDATE:[B

.field private static final OP_CODE_VALIDATE_KEY:I = 0x4


# instance fields
.field private final mBluetoothCallback:Lno/nordicsemi/android/dfu/LegacyDfuImpl$LegacyBluetoothCallback;

.field private mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mImageSizeInProgress:Z

.field private mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x2

    const-wide v6, 0x1523785feabcd123L

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15301212efdeL

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 51
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15311212efdeL

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 52
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15321212efdeL

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->DFU_PACKET_UUID:Ljava/util/UUID;

    .line 53
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15341212efdeL

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->DFU_VERSION:Ljava/util/UUID;

    .line 67
    new-array v0, v1, [B

    fill-array-data v0, :array_72

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_START_DFU:[B

    .line 68
    new-array v0, v1, [B

    fill-array-data v0, :array_78

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 69
    new-array v0, v1, [B

    fill-array-data v0, :array_7e

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 70
    new-array v0, v5, [B

    aput-byte v8, v0, v4

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 71
    new-array v0, v5, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v4

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_VALIDATE:[B

    .line 72
    new-array v0, v5, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v4

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 73
    new-array v0, v5, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v4

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_RESET:[B

    .line 75
    new-array v0, v8, [B

    fill-array-data v0, :array_84

    sput-object v0, Lno/nordicsemi/android/dfu/LegacyDfuImpl;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    return-void

    .line 67
    nop

    :array_72
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 68
    nop

    :array_78
    .array-data 1
        0x2t
        0x0t
    .end array-data

    .line 69
    nop

    :array_7e
    .array-data 1
        0x2t
        0x1t
    .end array-data

    .line 75
    nop

    :array_84
    .array-data 1
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

