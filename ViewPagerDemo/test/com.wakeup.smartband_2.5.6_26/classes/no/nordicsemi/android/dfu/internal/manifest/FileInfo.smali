.class public Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected binFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bin_file"
    .end annotation
.end field

.field protected datFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dat_file"
    .end annotation
.end field

.field protected initPacketData:Lno/nordicsemi/android/dfu/internal/manifest/InitPacketData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "init_packet_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

