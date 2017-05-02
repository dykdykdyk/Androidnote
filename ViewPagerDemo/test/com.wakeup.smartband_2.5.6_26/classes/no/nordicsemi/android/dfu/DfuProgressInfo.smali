.class Lno/nordicsemi/android/dfu/DfuProgressInfo;
.super Ljava/lang/Object;
.source "DfuProgressInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/DfuProgressInfo$ProgressListener;
    }
.end annotation


# instance fields
.field private bytesReceived:I

.field private bytesSent:I

.field private currentPart:I

.field private imageSizeInBytes:I

.field private initialBytesSent:I

.field private lastBytesSent:I

.field private lastProgressTime:J

.field private final mListener:Lno/nordicsemi/android/dfu/DfuProgressInfo$ProgressListener;

.field private maxObjectSizeInBytes:I

.field private progress:I

.field private timeStart:J

.field private totalParts:I


# direct methods
