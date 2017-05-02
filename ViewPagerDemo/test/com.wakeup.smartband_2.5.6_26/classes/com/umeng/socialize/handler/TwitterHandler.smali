.class public Lcom/umeng/socialize/handler/TwitterHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "TwitterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;
    }
.end annotation


# static fields
.field private static final PackageName:Ljava/lang/String; = "com.twitter.android"

.field private static final ShareTarget:Ljava/lang/String; = "com.twitter.android.composer.ComposerActivity"

.field static final TWITTER_CALLBACK_URL:Ljava/lang/String; = "oauth://t4jsample"

.field static final URL_TWITTER_AUTH:Ljava/lang/String; = "auth_url"

.field static final URL_TWITTER_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field static final URL_TWITTER_OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$Twitter;

.field private context:Landroid/content/Context;

.field private mTwitter:Ltwitter4j/Twitter;

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field private shareContent:Lcom/umeng/socialize/media/TwitterShareContent;

.field private twitterpreferences:Lcom/umeng/socialize/handler/TwitterPreferences;

.field private umAuthListener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method public constructor <init>()V
    .registers 1

