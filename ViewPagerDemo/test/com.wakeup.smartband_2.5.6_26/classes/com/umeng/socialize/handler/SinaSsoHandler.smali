.class public Lcom/umeng/socialize/handler/SinaSsoHandler;
.super Lcom/umeng/socialize/handler/UMAPIShareHandler;
.source "SinaSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/SinaSsoHandler$SinaConnection;,
        Lcom/umeng/socialize/handler/SinaSsoHandler$AuthListenerWrapper;,
        Lcom/umeng/socialize/handler/SinaSsoHandler$AuthListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x161b

.field public static final SCOPE:Ljava/lang/String; = "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

.field private static final TAG:Ljava/lang/String; = "SinaSsoHandler"

.field private static final waiturl:Ljava/lang/String; = "sina2/main?uid"


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$SinaWeibo;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mAuthListener:Lcom/umeng/socialize/handler/SinaSsoHandler$AuthListener;

.field private mContext:Landroid/content/Context;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private mWeiboShareAPI:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private shareListener:Lcom/umeng/socialize/UMShareListener;

.field private sinaPreferences:Lcom/umeng/socialize/handler/SinaPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

