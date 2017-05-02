.class public Lcom/linkedin/platform/listeners/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# static fields
.field private static final DATA:Ljava/lang/String; = "responseData"

.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final STATUS_CODE:Ljava/lang/String; = "StatusCode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final locationHeader:Ljava/lang/String;

.field private final responseData:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/linkedin/platform/listeners/ApiResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/listeners/ApiResponse;->TAG:Ljava/lang/String;

    return-void
.end method

