.class public Lcom/wakeup/smartband/ui/help/HelpActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "HelpActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCommonTop:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field mFragment:Landroid/view/View;

.field private mHelpSolveFragment:Lcom/wakeup/smartband/ui/fragment/help/HelpSolveFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/wakeup/smartband/ui/help/HelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/help/HelpActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

