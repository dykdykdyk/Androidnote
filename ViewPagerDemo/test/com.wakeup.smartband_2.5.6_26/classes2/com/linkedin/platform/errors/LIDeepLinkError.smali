.class public Lcom/linkedin/platform/errors/LIDeepLinkError;
.super Ljava/lang/Object;
.source "LIDeepLinkError.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorCode:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field private errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/linkedin/platform/errors/LIDeepLinkError;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/errors/LIDeepLinkError;->TAG:Ljava/lang/String;

    return-void
.end method

