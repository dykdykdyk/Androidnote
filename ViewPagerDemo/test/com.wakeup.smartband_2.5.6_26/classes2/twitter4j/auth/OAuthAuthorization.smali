.class public Ltwitter4j/auth/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/Authorization;
.implements Ltwitter4j/auth/OAuthSupport;


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

.field private static final RAND:Ljava/util/Random;

.field private static transient http:Ltwitter4j/HttpClient; = null

.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0xc4ecb0b0410dbb4L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private oauthToken:Ltwitter4j/auth/OAuthToken;

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ltwitter4j/HttpParameter;

    const-string/jumbo v1, "oauth_signature_method"

    const-string/jumbo v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

    .line 41
    const-class v0, Ltwitter4j/auth/OAuthAuthorization;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/Logger;

    .line 249
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    return-void
.end method

