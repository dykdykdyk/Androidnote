.class public Lcom/wakeup/smartband/ui/GuiderActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "GuiderActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static instance:Lcom/wakeup/smartband/ui/GuiderActivity;


# instance fields
.field guider_buied:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f012f
    .end annotation
.end field

.field guider_ll_point:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0130
    .end annotation
.end field

.field guider_tv_describe:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f012d
    .end annotation
.end field

.field guider_tv_enter:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f012e
    .end annotation
.end field

.field guider_vp:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f012c
    .end annotation
.end field

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field picRes:[I

.field textRes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/wakeup/smartband/ui/GuiderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/GuiderActivity;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/GuiderActivity;->instance:Lcom/wakeup/smartband/ui/GuiderActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

