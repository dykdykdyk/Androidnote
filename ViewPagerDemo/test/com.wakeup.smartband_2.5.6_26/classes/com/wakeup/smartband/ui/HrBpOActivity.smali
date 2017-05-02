.class public Lcom/wakeup/smartband/ui/HrBpOActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "HrBpOActivity.java"


# static fields
.field public static JUMP_TYPE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HrBpOActivity"

.field public static YE:Ljava/lang/String; = null

.field public static final YE_BO:Ljava/lang/String; = "BO"

.field public static final YE_BP:Ljava/lang/String; = "BP"

.field public static final YE_FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final YE_HR:Ljava/lang/String; = "HR"

.field public static final YE_TIRED:Ljava/lang/String; = "tired"


# instance fields
.field private FLAG_ONCLICK:Z

.field private backIntent:Landroid/content/Intent;

.field private fragment_day:Landroid/support/v4/app/Fragment;

.field private fragment_month:Landroid/support/v4/app/Fragment;

.field private fragment_week:Landroid/support/v4/app/Fragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private listener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private ri:Landroid/widget/TextView;

.field private textViews:[Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private type:I

.field private view:Landroid/view/View;

.field private ye_fragment:I

.field private yue:Landroid/widget/TextView;

.field private zhou:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "YE"

    sput-object v0, Lcom/wakeup/smartband/ui/HrBpOActivity;->YE:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "jumpType"

    sput-object v0, Lcom/wakeup/smartband/ui/HrBpOActivity;->JUMP_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

