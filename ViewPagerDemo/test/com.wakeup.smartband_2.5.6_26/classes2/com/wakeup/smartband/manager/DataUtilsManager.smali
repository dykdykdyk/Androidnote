.class public Lcom/wakeup/smartband/manager/DataUtilsManager;
.super Ljava/lang/Object;
.source "DataUtilsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/manager/DataUtilsManager$ModelString;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUtilsManager"

.field private static TimeInMillisPerDay:J

.field private static TimeInMillisPerHour:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wakeup/smartband/manager/DataUtilsManager;->TimeInMillisPerDay:J

    .line 32
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/wakeup/smartband/manager/DataUtilsManager;->TimeInMillisPerHour:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

