.class public Lcom/linkedin/platform/APIHelper;
.super Ljava/lang/Object;
.source "APIHelper.java"


# static fields
.field private static final CONTENT_VALUE:Ljava/lang/String; = "application/json"

.field private static final DATA:Ljava/lang/String; = "responseData"

.field private static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final HEADER_LI_FORMAT:Ljava/lang/String; = "x-li-format"

.field private static final HEADER_LI_FORMAT_VALUE:Ljava/lang/String; = "json"

.field private static final HEADER_LI_PLFM:Ljava/lang/String; = "x-li-plfm"

.field private static final HEADER_LI_PLFM_ANDROID:Ljava/lang/String; = "ANDROID_SDK"

.field private static final HEADER_LI_VER:Ljava/lang/String; = "x-li-msdk-ver"

.field private static final HEADER_SRC:Ljava/lang/String; = "x-li-src"

.field private static final HEADER_SRC_VALUE:Ljava/lang/String; = "msdk"

.field private static final HTTP_STATUS_CODE:Ljava/lang/String; = "StatusCode"

.field private static final LOCATION_HEADER:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String;

.field private static apiHelper:Lcom/linkedin/platform/APIHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/linkedin/platform/APIHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/APIHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

