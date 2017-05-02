.class abstract Lno/nordicsemi/android/dfu/BaseDfuImpl;
.super Ljava/lang/Object;
.source "BaseDfuImpl.java"

# interfaces
.implements Lno/nordicsemi/android/dfu/DfuService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;
    }
.end annotation


# static fields
.field protected static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field protected static final GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

.field protected static final HEX_ARRAY:[C

.field protected static final INDICATIONS:I = 0x2

.field protected static final MAX_PACKET_SIZE:I = 0x14

.field protected static final NOTIFICATIONS:I = 0x1

.field protected static final SERVICE_CHANGED_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "DfuImpl"


# instance fields
.field protected mAborted:Z

.field protected final mBuffer:[B

.field protected mConnected:Z

.field protected mError:I

.field protected mFileType:I

.field protected mFirmwareStream:Ljava/io/InputStream;

.field protected mGatt:Landroid/bluetooth/BluetoothGatt;

.field protected mImageSizeInBytes:I

.field protected mInitPacketSizeInBytes:I

.field protected mInitPacketStream:Ljava/io/InputStream;

.field protected final mLock:Ljava/lang/Object;

.field protected mPaused:Z

.field protected mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

.field protected mReceivedData:[B

.field protected mRequestCompleted:Z

.field protected mResetRequestSent:Z

.field protected mService:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide v4, -0x7fffff7fa064cb05L

    .line 48
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x180100001000L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/BaseDfuImpl;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    .line 49
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x2a0500001000L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/BaseDfuImpl;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    .line 50
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x290200001000L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/BaseDfuImpl;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 54
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/dfu/BaseDfuImpl;->HEX_ARRAY:[C

    return-void
.end method

