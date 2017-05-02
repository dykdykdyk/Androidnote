.class public Lcom/wakeup/smartband/ui/GoogleFitActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "GoogleFitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/GoogleFitActivity$UpdateAndVerifyDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicHistoryApi"

.field private static activity:Landroid/support/v4/app/FragmentActivity;

.field public static mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static stepCount:I


# instance fields
.field disconnect_googlefit:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00af
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/GoogleFitActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

