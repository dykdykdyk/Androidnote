.class public Lcom/linkedin/platform/errors/LIAuthError;
.super Ljava/lang/Object;
.source "LIAuthError.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorCode:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field private errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/linkedin/platform/errors/LIAuthError;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/errors/LIAuthError;->TAG:Ljava/lang/String;

    return-void
.end method

