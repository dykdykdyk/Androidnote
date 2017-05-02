.class public abstract Lcom/umeng/socialize/net/base/SocializeRequest;
.super Lcom/umeng/socialize/net/utils/URequest;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;,
        Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
    }
.end annotation


# static fields
.field public static final REQUEST_ANALYTIC:I = 0x1

.field public static final REQUEST_API:I = 0x2

.field public static final REQUEST_SOCIAL:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEncrypt:Z

.field private mFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/net/utils/URequest$FilePair;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

.field protected mOpId:I

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReqType:I

.field protected mResponseClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/net/base/SocializeReseponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
