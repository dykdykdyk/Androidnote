.class public Lcom/wakeup/smartband/barcharformatter/BarChart3s;
.super Ljava/lang/Object;
.source "BarChart3s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/barcharformatter/BarChart3s$BarChartType;
    }
.end annotation


# static fields
.field private static TimeInMillisPerDay:J

.field private static TimeInMillisPerHour:J


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mContext:Landroid/content/Context;

.field private mShowType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wakeup/smartband/barcharformatter/BarChart3s;->TimeInMillisPerDay:J

    .line 28
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/wakeup/smartband/barcharformatter/BarChart3s;->TimeInMillisPerHour:J

    return-void
.end method

