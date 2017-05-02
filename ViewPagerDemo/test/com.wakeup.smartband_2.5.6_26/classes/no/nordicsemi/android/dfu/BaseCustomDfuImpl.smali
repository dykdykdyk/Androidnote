.class abstract Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;
.super Lno/nordicsemi/android/dfu/BaseDfuImpl;
.source "BaseCustomDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/BaseCustomDfuImpl$BaseCustomBluetoothCallback;
    }
.end annotation


# instance fields
.field private mFirmwareUploadInProgress:Z

.field private mInitPacketInProgress:Z

.field protected final mPacketsBeforeNotification:I

.field protected mPacketsSentSinceNotification:I

.field protected mRemoteErrorOccurred:Z


# direct methods
