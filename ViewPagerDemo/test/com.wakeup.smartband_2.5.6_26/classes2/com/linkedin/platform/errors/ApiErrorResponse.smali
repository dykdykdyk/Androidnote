.class public Lcom/linkedin/platform/errors/ApiErrorResponse;
.super Ljava/lang/Object;
.source "ApiErrorResponse.java"


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String;

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field public final errorCode:I

.field private jsonApiErrorResponse:Lorg/json/JSONObject;

.field public final message:Ljava/lang/String;

.field public final requestId:Ljava/lang/String;

.field public final status:I

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/linkedin/platform/errors/ApiErrorResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/errors/ApiErrorResponse;->TAG:Ljava/lang/String;

    return-void
.end method

