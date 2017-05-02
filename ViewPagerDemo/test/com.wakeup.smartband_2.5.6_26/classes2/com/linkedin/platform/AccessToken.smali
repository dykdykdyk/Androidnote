.class public Lcom/linkedin/platform/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACCESS_TOKEN_VALUE:Ljava/lang/String; = "accessTokenValue"

.field private static final EXPIRES_ON:Ljava/lang/String; = "expiresOn"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accessTokenValue:Ljava/lang/String;

.field private final expiresOn:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/linkedin/platform/AccessToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/AccessToken;->TAG:Ljava/lang/String;

    return-void
.end method

