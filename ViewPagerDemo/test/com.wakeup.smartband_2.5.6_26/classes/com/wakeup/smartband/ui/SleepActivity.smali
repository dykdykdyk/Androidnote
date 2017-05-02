.class public Lcom/wakeup/smartband/ui/SleepActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "SleepActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field commonTopBar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0316
    .end annotation
.end field

.field private fragment_day:Landroid/support/v4/app/Fragment;

.field private fragment_day_old:Landroid/support/v4/app/Fragment;

.field private fragment_month:Landroid/support/v4/app/Fragment;

.field private fragment_month_old:Landroid/support/v4/app/Fragment;

.field private fragment_week:Landroid/support/v4/app/Fragment;

.field private fragment_week_old:Landroid/support/v4/app/Fragment;

.field mBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01ca
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mIntent:Landroid/content/Intent;

.field mRootView:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f016a
    .end annotation
.end field

.field mShare:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0319
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f031d
    .end annotation
.end field

.field status:I

.field private textViews:[Landroid/widget/TextView;

.field type:I

.field version:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/wakeup/smartband/ui/SleepActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/SleepActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

