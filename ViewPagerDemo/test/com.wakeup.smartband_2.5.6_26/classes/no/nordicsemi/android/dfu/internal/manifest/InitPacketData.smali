.class public Lno/nordicsemi/android/dfu/internal/manifest/InitPacketData;
.super Ljava/lang/Object;
.source "InitPacketData.java"


# instance fields
.field protected applicationVersion:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_version"
    .end annotation
.end field

.field protected compressionType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "compression_type"
    .end annotation
.end field

.field protected deviceRevision:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_revision"
    .end annotation
.end field

.field protected deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_type"
    .end annotation
.end field

.field protected firmwareCRC16:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_crc16"
    .end annotation
.end field

.field protected firmwareHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_hash"
    .end annotation
.end field

.field protected packetVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packet_version"
    .end annotation
.end field

.field protected softdeviceReq:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_req"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

