.class public Lcom/umeng/socialize/handler/UMLinkedInHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMLinkedInHandler.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.linkedin.android"

.field private static final TAG:Ljava/lang/String;

.field private static mApiHelper:Lcom/linkedin/platform/APIHelper; = null

.field private static final mBasicProfileUrl:Ljava/lang/String; = "https://api.linkedin.com/v1/people/~:(id,first-name,last-name,maiden-name,formatted-name,phonetic-first-name,phonetic-last-name,formatted-phonetic-name,headline,location,industry,current-share,num-connections,num-connections-capped,summary,specialties,positions,picture-url,picture-urls::(original),site-standard-profile-request,api-standard-profile-request)"

.field private static final mShareUrl:Ljava/lang/String; = "https://api.linkedin.com/v1/people/~/shares"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLiSessionManager:Lcom/linkedin/platform/LISessionManager;

.field private mLinkedInPreferences:Lcom/umeng/socialize/handler/LinkedInPreferences;

.field private mScope:Lcom/linkedin/platform/utils/Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/umeng/socialize/handler/UMLinkedInHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/handler/UMLinkedInHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

