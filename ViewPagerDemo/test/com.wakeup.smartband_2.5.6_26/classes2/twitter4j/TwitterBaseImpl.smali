.class abstract Ltwitter4j/TwitterBaseImpl;
.super Ljava/lang/Object;
.source "TwitterBaseImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpResponseListener;
.implements Ltwitter4j/TwitterBase;
.implements Ltwitter4j/auth/OAuth2Support;
.implements Ltwitter4j/auth/OAuthSupport;


# static fields
.field private static final WWW_DETAILS:Ljava/lang/String; = "See http://twitter4j.org/en/configuration.html for details"

.field private static final serialVersionUID:J = -0x6c95b7ba682a9eeaL


# instance fields
.field auth:Ltwitter4j/auth/Authorization;

.field conf:Ltwitter4j/conf/Configuration;

.field factory:Ltwitter4j/ObjectFactory;

.field transient http:Ltwitter4j/HttpClient;

.field private transient id:J

.field private rateLimitStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/RateLimitStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient screenName:Ljava/lang/String;


# direct methods
