.class public Lcom/wakeup/smartband/animation/CircularAnim$FullActivityBuilder;
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
    name = "FullActivityBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColorOrImageRes:I

.field private mDurationMills:Ljava/lang/Long;

.field private mEnterAnim:I

.field private mExitAnim:I

.field private mOnAnimationEndListener:Lcom/wakeup/smartband/animation/CircularAnim$OnAnimationEndListener;

.field private mStartRadius:F

.field private mTriggerView:Landroid/view/View;


# direct methods
