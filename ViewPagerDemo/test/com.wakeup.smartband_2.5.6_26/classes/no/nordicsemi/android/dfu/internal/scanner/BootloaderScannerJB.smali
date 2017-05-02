.class public Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
.implements Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;


# instance fields
.field private mBootloaderAddress:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAddressIncremented:Ljava/lang/String;

.field private mFound:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

