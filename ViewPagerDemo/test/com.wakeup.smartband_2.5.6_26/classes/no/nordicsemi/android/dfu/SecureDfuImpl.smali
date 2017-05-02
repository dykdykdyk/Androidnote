.class Lno/nordicsemi/android/dfu/SecureDfuImpl;
.super Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;
.source "SecureDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/SecureDfuImpl$ErrorMessage;,
        Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;,
        Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;,
        Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;
    }
.end annotation


# static fields
.field protected static final DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field protected static final DFU_PACKET_UUID:Ljava/util/UUID;

.field protected static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field private static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final OBJECT_COMMAND:I = 0x1

.field private static final OBJECT_DATA:I = 0x2

.field private static final OP_CODE_CALCULATE_CHECKSUM:[B

.field private static final OP_CODE_CALCULATE_CHECKSUM_KEY:I = 0x3

.field private static final OP_CODE_CREATE_COMMAND:[B

.field private static final OP_CODE_CREATE_DATA:[B

.field private static final OP_CODE_CREATE_KEY:I = 0x1

.field private static final OP_CODE_EXECUTE:[B

.field private static final OP_CODE_EXECUTE_KEY:I = 0x4

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x2

.field private static final OP_CODE_READ_ERROR:[B

.field private static final OP_CODE_READ_ERROR_KEY:I = 0x5

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x60

.field private static final OP_CODE_SELECT_OBJECT:[B

.field private static final OP_CODE_SELECT_OBJECT_KEY:I = 0x6


# instance fields
.field private final mBluetoothCallback:Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;

.field private mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const-wide v10, -0x60477c77cf2515b0L

    const/4 v8, 0x6

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0xfe5900001000L

    const-wide v4, -0x7fffff7fa064cb05L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 48
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x7136fffe0ceab0a0L

    invoke-direct {v0, v2, v3, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 49
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x7136fffd0ceab0a0L

    invoke-direct {v0, v2, v3, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_PACKET_UUID:Ljava/util/UUID;

    .line 65
    new-array v0, v8, [B

    fill-array-data v0, :array_64

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_COMMAND:[B

    .line 66
    new-array v0, v8, [B

    fill-array-data v0, :array_6c

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_DATA:[B

    .line 67
    new-array v0, v1, [B

    fill-array-data v0, :array_74

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 68
    new-array v0, v7, [B

    aput-byte v1, v0, v6

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CALCULATE_CHECKSUM:[B

    .line 69
    new-array v0, v7, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v6

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_EXECUTE:[B

    .line 70
    new-array v0, v7, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_READ_ERROR:[B

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_7a

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_SELECT_OBJECT:[B

    return-void

    .line 65
    :array_64
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 66
    nop

    :array_6c
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 67
    nop

    :array_74
    .array-data 1
        0x2t
        0x0t
        0x0t
    .end array-data

    .line 71
    :array_7a
    .array-data 1
        0x6t
        0x0t
    .end array-data
.end method

