.class public Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/widget/view/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter$RecyViewHolder;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/wakeup/smartband/ui/widget/view/TimelineView$ScrollListener;

.field private num:F

.field private old:Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter$RecyViewHolder;

.field private recyViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wakeup/smartband/ui/widget/view/TimelineView$RecyAdapter$RecyViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wakeup/smartband/ui/widget/view/TimelineView;

.field private width:F


# direct methods
