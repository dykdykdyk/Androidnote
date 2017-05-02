.class public Lcom/wakeup/smartband/ui/StepActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "StepActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field commonTopBar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0316
    .end annotation
.end field

.field private fragment_day:Landroid/support/v4/app/Fragment;

.field private fragment_month:Landroid/support/v4/app/Fragment;

.field private fragment_week:Landroid/support/v4/app/Fragment;

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
        value = 0x7f0f0181
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

.field private textViews:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/wakeup/smartband/ui/StepActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/StepActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

