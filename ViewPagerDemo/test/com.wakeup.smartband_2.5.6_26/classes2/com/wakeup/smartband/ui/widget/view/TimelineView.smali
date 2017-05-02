.class public Lcom/wakeup/smartband/ui/widget/view/TimelineView;
.super Landroid/widget/FrameLayout;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/view/TimelineView$ScrollListener;,
        Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter;
    }
.end annotation


# static fields
.field public static TimeInMillisPerDay:J


# instance fields
.field private adapter:Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter;

.field private content_right:F

.field public context:Landroid/content/Context;

.field private datalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private item_width:F

.field private listener:Lcom/wakeup/smartband/ui/widget/view/TimelineView$ScrollListener;

.field private num:F

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private showType:I

.field ss:I

.field private trax:F

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wakeup/smartband/ui/widget/view/TimelineView;->TimeInMillisPerDay:J

    return-void
.end method

