.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static FRAGMENT_TAG:Ljava/lang/String;

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;


# instance fields
.field private R:Lcom/umeng/socialize/common/ResContainer;

.field private singleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

