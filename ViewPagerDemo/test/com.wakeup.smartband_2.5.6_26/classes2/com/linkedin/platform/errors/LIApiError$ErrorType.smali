.class public final enum Lcom/linkedin/platform/errors/LIApiError$ErrorType;
.super Ljava/lang/Enum;
.source "LIApiError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/platform/errors/LIApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/linkedin/platform/errors/LIApiError$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/platform/errors/LIApiError$ErrorType;

.field public static final enum accessTokenIsNotSet:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

.field public static final enum apiErrorResponse:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

.field public static final enum other:Lcom/linkedin/platform/errors/LIApiError$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    const-string/jumbo v1, "accessTokenIsNotSet"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/errors/LIApiError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->accessTokenIsNotSet:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    .line 27
    new-instance v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    const-string/jumbo v1, "apiErrorResponse"

    invoke-direct {v0, v1, v3}, Lcom/linkedin/platform/errors/LIApiError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->apiErrorResponse:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    .line 28
    new-instance v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    const-string/jumbo v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/linkedin/platform/errors/LIApiError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->other:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    sget-object v1, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->accessTokenIsNotSet:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->apiErrorResponse:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->other:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->$VALUES:[Lcom/linkedin/platform/errors/LIApiError$ErrorType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/platform/errors/LIApiError$ErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/linkedin/platform/errors/LIApiError$ErrorType;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/linkedin/platform/errors/LIApiError$ErrorType;->$VALUES:[Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    invoke-virtual {v0}, [Lcom/linkedin/platform/errors/LIApiError$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/platform/errors/LIApiError$ErrorType;

    return-object v0
.end method
