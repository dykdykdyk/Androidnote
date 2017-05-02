.class public Lcom/linkedin/platform/DeepLinkHelper;
.super Ljava/lang/Object;
.source "DeepLinkHelper.java"


# static fields
.field private static final CURRENTLY_LOGGED_IN_MEMBER:Ljava/lang/String; = "you"

.field private static final DEEPLINK_ERROR_CODE_EXTRA_NAME:Ljava/lang/String; = "com.linkedin.thirdparty.deeplink.EXTRA_ERROR_CODE"

.field private static final DEEPLINK_ERROR_MESSAGE_EXTRA_NAME:Ljava/lang/String; = "com.linkedin.thirdparty.deeplink.EXTRA_ERROR_MESSAGE"

.field public static final LI_SDK_CROSSLINK_REQUEST_CODE:I = 0x33e7

.field private static final TAG:Ljava/lang/String;

.field private static deepLinkHelper:Lcom/linkedin/platform/DeepLinkHelper;


# instance fields
.field private deepLinkListener:Lcom/linkedin/platform/listeners/DeepLinkListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/linkedin/platform/DeepLinkHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/DeepLinkHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

