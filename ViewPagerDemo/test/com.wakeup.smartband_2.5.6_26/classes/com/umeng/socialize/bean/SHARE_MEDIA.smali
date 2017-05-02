.class public final enum Lcom/umeng/socialize/bean/SHARE_MEDIA;
.super Ljava/lang/Enum;
.source "SHARE_MEDIA.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum ALIPAY:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum EVERNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum FLICKR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum FOURSQUARE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum PINTEREST:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum POCKET:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "GOOGLEPLUS"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 30
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 34
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 38
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 42
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "SINA"

    invoke-direct {v0, v1, v7}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 46
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "QZONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 50
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "QQ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 54
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "RENREN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 58
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "WEIXIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 62
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "WEIXIN_CIRCLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 66
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "TENCENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 70
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "DOUBAN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 74
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "FACEBOOK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 78
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "TWITTER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 82
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "LAIWANG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 86
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "LAIWANG_DYNAMIC"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 90
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "YIXIN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 94
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "YIXIN_CIRCLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 98
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "INSTAGRAM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 102
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "PINTEREST"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->PINTEREST:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 106
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "EVERNOTE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EVERNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 110
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "POCKET"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->POCKET:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 114
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "LINKEDIN"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 118
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "FOURSQUARE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FOURSQUARE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 122
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "YNOTE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 126
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "WHATSAPP"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 130
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "LINE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 134
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "FLICKR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FLICKR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 138
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "TUMBLR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 140
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "ALIPAY"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ALIPAY:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 144
    new-instance v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string/jumbo v1, "KAKAO"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 21
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->PINTEREST:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EVERNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->POCKET:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FOURSQUARE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WHATSAPP:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FLICKR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TUMBLR:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ALIPAY:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->$VALUES:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-object p3, p0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    :cond_7
    :goto_7
    return-object v0

    .line 163
    :cond_8
    const-string/jumbo v1, "wxtimeline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 164
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_7

    .line 165
    :cond_14
    const-string/jumbo v1, "wxsession"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 166
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_7

    .line 169
    :cond_20
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v3

    .line 170
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_27
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 171
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    move-object v0, v1

    .line 172
    goto :goto_7

    .line 170
    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_27
.end method

.method public static createSnsPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/umeng/socialize/shareboard/SnsPlatform;
    .registers 6

    .prologue
    .line 189
    new-instance v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-direct {v0}, Lcom/umeng/socialize/shareboard/SnsPlatform;-><init>()V

    .line 190
    iput-object p0, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 191
    iput-object p2, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 192
    iput-object p3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 193
    iput p4, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 194
    iput-object p1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    .line 196
    return-object v0
.end method

.method public static getDefaultPlatform()[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .registers 3

    .prologue
    .line 417
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    .line 420
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->$VALUES:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, [Lcom/umeng/socialize/bean/SHARE_MEDIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method


# virtual methods
.method public toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-direct {v0}, Lcom/umeng/socialize/shareboard/SnsPlatform;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 201
    const-string/jumbo v1, "umeng_socialize_text_qq_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 202
    const-string/jumbo v1, "umeng_socialize_qq_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 203
    const-string/jumbo v1, "umeng_socialize_qq_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 204
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 205
    const-string/jumbo v1, "qq"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    .line 394
    :cond_29
    :goto_29
    iput-object p0, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 395
    return-object v0

    .line 208
    :cond_2c
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 209
    const-string/jumbo v1, "umeng_socialize_sms"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "umeng_socialize_sms_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "umeng_socialize_sms_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 212
    const/4 v1, 0x1

    iput v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 213
    const-string/jumbo v1, "sms"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto :goto_29

    .line 215
    :cond_51
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GOOGLEPLUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 216
    const-string/jumbo v1, "umeng_socialize_text_googleplus_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 217
    const-string/jumbo v1, "umeng_socialize_google"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 218
    const-string/jumbo v1, "umeng_socialize_google"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 219
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 220
    const-string/jumbo v1, "gooleplus"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto :goto_29

    .line 222
    :cond_75
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GENERIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 225
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 226
    const-string/jumbo v1, "umeng_socialize_mail"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 227
    const-string/jumbo v1, "umeng_socialize_gmail_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 228
    const-string/jumbo v1, "umeng_socialize_gmail_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 229
    const/4 v1, 0x2

    iput v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 230
    const-string/jumbo v1, "email"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto :goto_29

    .line 232
    :cond_a7
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 233
    const-string/jumbo v1, "umeng_socialize_sina"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "umeng_socialize_sina_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 235
    const-string/jumbo v1, "umeng_socialize_sina_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 236
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 237
    const-string/jumbo v1, "sina"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 239
    :cond_cc
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QZONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 240
    const-string/jumbo v1, "umeng_socialize_text_qq_zone_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 241
    const-string/jumbo v1, "umeng_socialize_qzone_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 242
    const-string/jumbo v1, "umeng_socialize_qzone_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 243
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 244
    const-string/jumbo v1, "qzone"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 246
    :cond_f1
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RENREN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 247
    const-string/jumbo v1, "umeng_socialize_text_renren_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 248
    const-string/jumbo v1, "umeng_socialize_renren_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 249
    const-string/jumbo v1, "umeng_socialize_renren_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 250
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 251
    const-string/jumbo v1, "renren"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 253
    :cond_116
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WEIXIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 254
    const-string/jumbo v1, "umeng_socialize_text_weixin_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 255
    const-string/jumbo v1, "umeng_socialize_wechat"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 256
    const-string/jumbo v1, "umeng_socialize_weichat_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 257
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 258
    const-string/jumbo v1, "wechat"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 260
    :cond_13b
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WEIXIN_CIRCLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 261
    const-string/jumbo v1, "umeng_socialize_text_weixin_circle_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 262
    const-string/jumbo v1, "umeng_socialize_wxcircle"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "umeng_socialize_wxcircle_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 264
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 265
    const-string/jumbo v1, "wxcircle"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 266
    :cond_160
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TENCENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 267
    const-string/jumbo v1, "umeng_socialize_text_tencent_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 268
    const-string/jumbo v1, "umeng_socialize_tx_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 269
    const-string/jumbo v1, "umeng_socialize_tx_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 270
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 271
    const-string/jumbo v1, "tencent"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 272
    :cond_185
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FACEBOOK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 273
    const-string/jumbo v1, "umeng_socialize_text_facebook_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 274
    const-string/jumbo v1, "umeng_socialize_facebook"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 275
    const-string/jumbo v1, "umeng_socialize_facebook"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 276
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 277
    const-string/jumbo v1, "facebook"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 278
    :cond_1aa
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "YIXIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 279
    const-string/jumbo v1, "umeng_socialize_text_yixin_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 280
    const-string/jumbo v1, "umeng_socialize_yixin"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 281
    const-string/jumbo v1, "umeng_socialize_yixin_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 282
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 283
    const-string/jumbo v1, "yinxin"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 284
    :cond_1cf
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TWITTER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 285
    const-string/jumbo v1, "umeng_socialize_text_twitter_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 286
    const-string/jumbo v1, "umeng_socialize_twitter"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 287
    const-string/jumbo v1, "umeng_socialize_twitter"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 288
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 289
    const-string/jumbo v1, "twitter"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 290
    :cond_1f4
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LAIWANG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_219

    .line 291
    const-string/jumbo v1, "umeng_socialize_text_laiwang_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 292
    const-string/jumbo v1, "umeng_socialize_laiwang"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 293
    const-string/jumbo v1, "umeng_socialize_laiwang_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 294
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 295
    const-string/jumbo v1, "laiwang"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 296
    :cond_219
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LAIWANG_DYNAMIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 297
    const-string/jumbo v1, "umeng_socialize_text_laiwangdynamic_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 298
    const-string/jumbo v1, "umeng_socialize_laiwang_dynamic"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 299
    const-string/jumbo v1, "umeng_socialize_laiwang_dynamic_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 300
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 301
    const-string/jumbo v1, "laiwang_dynamic"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 302
    :cond_23e
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "INSTAGRAM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_263

    .line 303
    const-string/jumbo v1, "umeng_socialize_text_instagram_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 304
    const-string/jumbo v1, "umeng_socialize_instagram_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 305
    const-string/jumbo v1, "umeng_socialize_instagram_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 306
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 307
    const-string/jumbo v1, "qq"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 308
    :cond_263
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "YIXIN_CIRCLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_288

    .line 309
    const-string/jumbo v1, "umeng_socialize_text_yixincircle_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 310
    const-string/jumbo v1, "umeng_socialize_yixin_circle"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 311
    const-string/jumbo v1, "umeng_socialize_yixin_circle_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 312
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 313
    const-string/jumbo v1, "yinxincircle"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 315
    :cond_288
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PINTEREST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ad

    .line 316
    const-string/jumbo v1, "umeng_socialize_text_pinterest_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 317
    const-string/jumbo v1, "umeng_socialize_pinterest"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 318
    const-string/jumbo v1, "umeng_socialize_pinterest_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 319
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 320
    const-string/jumbo v1, "pinterest"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 321
    :cond_2ad
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EVERNOTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d2

    .line 322
    const-string/jumbo v1, "umeng_socialize_text_evernote_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 323
    const-string/jumbo v1, "umeng_socialize_evernote"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 324
    const-string/jumbo v1, "umeng_socialize_evernote_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 325
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 326
    const-string/jumbo v1, "evernote"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 327
    :cond_2d2
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "POCKET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f7

    .line 328
    const-string/jumbo v1, "umeng_socialize_text_pocket_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 329
    const-string/jumbo v1, "umeng_socialize_pocket"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 330
    const-string/jumbo v1, "umeng_socialize_pocket_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 331
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 332
    const-string/jumbo v1, "pocket"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 333
    :cond_2f7
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LINKEDIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31c

    .line 334
    const-string/jumbo v1, "umeng_socialize_text_linkedin_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 335
    const-string/jumbo v1, "umeng_socialize_linkedin"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 336
    const-string/jumbo v1, "umeng_socialize_linkedin_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 337
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 338
    const-string/jumbo v1, "linkedin"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 339
    :cond_31c
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FOURSQUARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_341

    .line 340
    const-string/jumbo v1, "umeng_socialize_text_foursquare_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 341
    const-string/jumbo v1, "umeng_socialize_foursquare"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 342
    const-string/jumbo v1, "umeng_socialize_foursquare_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 343
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 344
    const-string/jumbo v1, "foursquare"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 345
    :cond_341
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "YNOTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_366

    .line 346
    const-string/jumbo v1, "umeng_socialize_text_ydnote_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 347
    const-string/jumbo v1, "umeng_socialize_ynote"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 348
    const-string/jumbo v1, "umeng_socialize_ynote_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 349
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 350
    const-string/jumbo v1, "ynote"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 351
    :cond_366
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WHATSAPP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 352
    const-string/jumbo v1, "umeng_socialize_text_whatsapp_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 353
    const-string/jumbo v1, "umeng_socialize_whatsapp"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 354
    const-string/jumbo v1, "umeng_socialize_whatsapp_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 355
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 356
    const-string/jumbo v1, "whatsapp"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 357
    :cond_38b
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LINE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b0

    .line 358
    const-string/jumbo v1, "umeng_socialize_text_line_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 359
    const-string/jumbo v1, "umeng_socialize_line"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 360
    const-string/jumbo v1, "umeng_socialize_line_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 361
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 362
    const-string/jumbo v1, "line"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 363
    :cond_3b0
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FLICKR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d5

    .line 364
    const-string/jumbo v1, "umeng_socialize_text_flickr_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 365
    const-string/jumbo v1, "umeng_socialize_flickr"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 366
    const-string/jumbo v1, "umeng_socialize_flickr_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 367
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 368
    const-string/jumbo v1, "flickr"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 369
    :cond_3d5
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TUMBLR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fa

    .line 370
    const-string/jumbo v1, "umeng_socialize_text_tumblr_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 371
    const-string/jumbo v1, "umeng_socialize_tumblr"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 372
    const-string/jumbo v1, "umeng_socialize_tumblr_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 373
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 374
    const-string/jumbo v1, "tumblr"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 375
    :cond_3fa
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KAKAO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41f

    .line 376
    const-string/jumbo v1, "umeng_socialize_text_kakao_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 377
    const-string/jumbo v1, "umeng_socialize_kakao"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 378
    const-string/jumbo v1, "umeng_socialize_kakao_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 379
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 380
    const-string/jumbo v1, "kakao"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 381
    :cond_41f
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DOUBAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_444

    .line 382
    const-string/jumbo v1, "umeng_socialize_text_douban_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 383
    const-string/jumbo v1, "umeng_socialize_douban_on"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 384
    const-string/jumbo v1, "umeng_socialize_douban_off"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 385
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 386
    const-string/jumbo v1, "douban"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29

    .line 387
    :cond_444
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ALIPAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 388
    const-string/jumbo v1, "umeng_socialize_text_alipay_key"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 389
    const-string/jumbo v1, "alipay"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 390
    const-string/jumbo v1, "alipay"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 391
    iput v3, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIndex:I

    .line 392
    const-string/jumbo v1, "alipay"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mKeyword:Ljava/lang/String;

    goto/16 :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
