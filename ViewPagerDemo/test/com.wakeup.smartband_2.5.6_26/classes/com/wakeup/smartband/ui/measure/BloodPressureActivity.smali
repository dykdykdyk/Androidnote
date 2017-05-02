.class public Lcom/wakeup/smartband/ui/measure/BloodPressureActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "BloodPressureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$GetBloodPressureDataTask;
    }
.end annotation


# static fields
.field private static final CLOSE_BP_MEASURE:I = 0x1


# instance fields
.field private bpView:Lcom/wakeup/smartband/ui/widget/view/hr_bpo/BPView;

.field private isOnceMeasuring:Z

.field private item_imageid:I

.field private listener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field private mRootView:Landroid/view/View;

.field private one_flag:Z

.field private realTimeMeasure:Z

.field private ri:Landroid/widget/TextView;

.field private scroll:Lcom/wakeup/smartband/ui/widget/view/hr_bpo/BPScrollView;

.field private textViews:[Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private topbar:Landroid/widget/RelativeLayout;

.field private type:I

.field private yue:Landroid/widget/TextView;

.field private zhou:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

