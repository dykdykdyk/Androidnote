.class public Lcom/umeng/socialize/PlatformConfig;
.super Ljava/lang/Object;
.source "PlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/PlatformConfig$Platform;,
        Lcom/umeng/socialize/PlatformConfig$CustomPlatform;,
        Lcom/umeng/socialize/PlatformConfig$GooglePlus;,
        Lcom/umeng/socialize/PlatformConfig$Yixin;,
        Lcom/umeng/socialize/PlatformConfig$Laiwang;,
        Lcom/umeng/socialize/PlatformConfig$Pinterest;,
        Lcom/umeng/socialize/PlatformConfig$Weixin;,
        Lcom/umeng/socialize/PlatformConfig$Douban;,
        Lcom/umeng/socialize/PlatformConfig$Facebook;,
        Lcom/umeng/socialize/PlatformConfig$Renren;,
        Lcom/umeng/socialize/PlatformConfig$Alipay;,
        Lcom/umeng/socialize/PlatformConfig$TencentWeibo;,
        Lcom/umeng/socialize/PlatformConfig$SinaWeibo;,
        Lcom/umeng/socialize/PlatformConfig$Twitter;,
        Lcom/umeng/socialize/PlatformConfig$QQZone;
    }
.end annotation


# static fields
.field public static configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/PlatformConfig$Platform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    .line 26
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$QQZone;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$QQZone;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$QQZone;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$QQZone;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Weixin;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Weixin;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Weixin;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Weixin;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Douban;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$Douban;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Laiwang;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Laiwang;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Laiwang;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Laiwang;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Yixin;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Yixin;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Yixin;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Yixin;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$SinaWeibo;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$SinaWeibo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$QQZone;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$QQZone;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ALIPAY:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Alipay;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$Alipay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Renren;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$Renren;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$GooglePlus;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$GooglePlus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Twitter;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$Twitter;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->PINTEREST:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$Pinterest;

    invoke-direct {v2}, Lcom/umeng/socialize/PlatformConfig$Pinterest;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->POCKET:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->POCKET:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FLICKR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FLICKR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EVERNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EVERNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FOURSQUARE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FOURSQUARE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/PlatformConfig$CustomPlatform;-><init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 1

