.class public Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;
.super Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;
.source "SoftDeviceBootloaderFileInfo.java"


# instance fields
.field protected bootloaderSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bl_size"
    .end annotation
.end field

.field protected softdeviceSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sd_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

