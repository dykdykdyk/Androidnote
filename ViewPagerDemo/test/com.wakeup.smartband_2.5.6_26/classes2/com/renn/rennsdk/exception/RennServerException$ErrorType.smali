.class public final enum Lcom/renn/rennsdk/exception/RennServerException$ErrorType;
.super Ljava/lang/Enum;
.source "RennServerException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/exception/RennServerException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/exception/RennServerException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

.field public static final enum forbidden:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

.field public static final enum internal_error:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

.field public static final enum invalid_authorization:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

.field public static final enum invalid_request:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;


# instance fields
.field private httpErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    const-string/jumbo v1, "invalid_request"

    .line 42
    const/16 v2, 0x190

    invoke-direct {v0, v1, v3, v2}, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->invalid_request:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    .line 43
    new-instance v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    const-string/jumbo v1, "invalid_authorization"

    .line 56
    const/16 v2, 0x191

    invoke-direct {v0, v1, v4, v2}, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->invalid_authorization:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    .line 57
    new-instance v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    const-string/jumbo v1, "forbidden"

    .line 69
    const/16 v2, 0x193

    invoke-direct {v0, v1, v5, v2}, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->forbidden:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    .line 70
    new-instance v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    const-string/jumbo v1, "internal_error"

    .line 74
    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v6, v2}, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->internal_error:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    sget-object v1, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->invalid_request:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->invalid_authorization:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->forbidden:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->internal_error:Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->ENUM$VALUES:[Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "httpErrorCode"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->httpErrorCode:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/exception/RennServerException$ErrorType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/exception/RennServerException$ErrorType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->ENUM$VALUES:[Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/exception/RennServerException$ErrorType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getHttpErrorCode()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/renn/rennsdk/exception/RennServerException$ErrorType;->httpErrorCode:I

    return v0
.end method
