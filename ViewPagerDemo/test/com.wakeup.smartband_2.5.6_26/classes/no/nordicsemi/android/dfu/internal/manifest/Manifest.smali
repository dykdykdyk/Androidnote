.class public Lno/nordicsemi/android/dfu/internal/manifest/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field protected application:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected bootloader:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected softdevice:Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

.field protected softdeviceBootloader:Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_bootloader"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

