.class public Lcom/wakeup/smartband/animation/CircularAnim$VisibleBuilder;
.super Ljava/lang/Object;
.source "CircularAnim.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/animation/CircularAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleBuilder"
.end annotation


# instance fields
.field private isShow:Z

.field private mAnimView:Landroid/view/View;

.field private mDurationMills:J

.field private mEndRadius:Ljava/lang/Float;

.field private mOnAnimationEndListener:Lcom/wakeup/smartband/animation/CircularAnim$OnAnimationEndListener;

.field private mStartRadius:Ljava/lang/Float;

.field private mTriggerView:Landroid/view/View;


# direct methods
