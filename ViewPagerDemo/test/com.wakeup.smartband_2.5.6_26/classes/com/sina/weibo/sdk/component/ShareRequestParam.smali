.class public Lcom/sina/weibo/sdk/component/ShareRequestParam;
.super Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
.source "ShareRequestParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;
    }
.end annotation


# static fields
.field public static final REQ_PARAM_AID:Ljava/lang/String; = "aid"

.field public static final REQ_PARAM_KEY_HASH:Ljava/lang/String; = "key_hash"

.field public static final REQ_PARAM_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final REQ_PARAM_PICINFO:Ljava/lang/String; = "picinfo"

.field public static final REQ_PARAM_SOURCE:Ljava/lang/String; = "source"

.field public static final REQ_PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final REQ_PARAM_TOKEN:Ljava/lang/String; = "access_token"

.field public static final REQ_PARAM_VERSION:Ljava/lang/String; = "version"

.field public static final REQ_UPLOAD_PIC_PARAM_IMG:Ljava/lang/String; = "img"

.field public static final RESP_UPLOAD_PIC_PARAM_CODE:Ljava/lang/String; = "code"

.field public static final RESP_UPLOAD_PIC_PARAM_DATA:Ljava/lang/String; = "data"

.field public static final RESP_UPLOAD_PIC_SUCC_CODE:I = 0x1

.field private static final SHARE_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk.php"

.field public static final UPLOAD_PIC_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk_uppic.php"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppPackage:Ljava/lang/String;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mAuthListenerKey:Ljava/lang/String;

.field private mBase64ImgData:[B

.field private mBaseRequest:Lcom/sina/weibo/sdk/api/share/BaseRequest;

.field private mHashKey:Ljava/lang/String;

.field private mShareContent:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
