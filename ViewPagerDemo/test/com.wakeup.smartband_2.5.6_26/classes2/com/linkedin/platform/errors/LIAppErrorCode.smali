.class public final enum Lcom/linkedin/platform/errors/LIAppErrorCode;
.super Ljava/lang/Enum;
.source "LIAppErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/linkedin/platform/errors/LIAppErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum LINKEDIN_APP_NOT_FOUND:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum NETWORK_UNAVAILABLE:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum NONE:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum NOT_AUTHENTICATED:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum SERVER_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field public static final enum USER_CANCELLED:Lcom/linkedin/platform/errors/LIAppErrorCode;

.field private static liAuthErrorCodeHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/linkedin/platform/errors/LIAppErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->NONE:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 8
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "INVALID_REQUEST"

    const-string/jumbo v2, "Invalid request"

    invoke-direct {v0, v1, v5, v2}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->INVALID_REQUEST:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 9
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "NETWORK_UNAVAILABLE"

    const-string/jumbo v2, "Unavailable network connection"

    invoke-direct {v0, v1, v6, v2}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->NETWORK_UNAVAILABLE:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 10
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "USER_CANCELLED"

    const-string/jumbo v2, "User canceled action"

    invoke-direct {v0, v1, v7, v2}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->USER_CANCELLED:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 11
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const-string/jumbo v2, "Unknown or not defined error"

    invoke-direct {v0, v1, v8, v2}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->UNKNOWN_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 12
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "SERVER_ERROR"

    const/4 v2, 0x5

    const-string/jumbo v3, "Server side error"

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->SERVER_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 13
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "LINKEDIN_APP_NOT_FOUND"

    const/4 v2, 0x6

    const-string/jumbo v3, "LinkedIn application not found"

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->LINKEDIN_APP_NOT_FOUND:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 14
    new-instance v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    const-string/jumbo v1, "NOT_AUTHENTICATED"

    const/4 v2, 0x7

    const-string/jumbo v3, "User is not authenticated in LinkedIn app"

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/platform/errors/LIAppErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->NOT_AUTHENTICATED:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/linkedin/platform/errors/LIAppErrorCode;

    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->NONE:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->INVALID_REQUEST:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->NETWORK_UNAVAILABLE:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->USER_CANCELLED:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->UNKNOWN_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/linkedin/platform/errors/LIAppErrorCode;->SERVER_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/linkedin/platform/errors/LIAppErrorCode;->LINKEDIN_APP_NOT_FOUND:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/linkedin/platform/errors/LIAppErrorCode;->NOT_AUTHENTICATED:Lcom/linkedin/platform/errors/LIAppErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->$VALUES:[Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 17
    invoke-static {}, Lcom/linkedin/platform/errors/LIAppErrorCode;->buildMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->liAuthErrorCodeHashMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/linkedin/platform/errors/LIAppErrorCode;->description:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private static buildMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/linkedin/platform/errors/LIAppErrorCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/linkedin/platform/errors/LIAppErrorCode;>;"
    invoke-static {}, Lcom/linkedin/platform/errors/LIAppErrorCode;->values()[Lcom/linkedin/platform/errors/LIAppErrorCode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_19

    aget-object v0, v3, v2

    .line 22
    .local v0, "code":Lcom/linkedin/platform/errors/LIAppErrorCode;
    invoke-virtual {v0}, Lcom/linkedin/platform/errors/LIAppErrorCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 24
    .end local v0    # "code":Lcom/linkedin/platform/errors/LIAppErrorCode;
    :cond_19
    return-object v1
.end method

.method public static findErrorCode(Ljava/lang/String;)Lcom/linkedin/platform/errors/LIAppErrorCode;
    .registers 3
    .param p0, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v1, Lcom/linkedin/platform/errors/LIAppErrorCode;->liAuthErrorCodeHashMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    .line 39
    .local v0, "liAuthErrorCode":Lcom/linkedin/platform/errors/LIAppErrorCode;
    if-nez v0, :cond_c

    sget-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->UNKNOWN_ERROR:Lcom/linkedin/platform/errors/LIAppErrorCode;

    .end local v0    # "liAuthErrorCode":Lcom/linkedin/platform/errors/LIAppErrorCode;
    :cond_c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/platform/errors/LIAppErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linkedin/platform/errors/LIAppErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/linkedin/platform/errors/LIAppErrorCode;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/linkedin/platform/errors/LIAppErrorCode;->$VALUES:[Lcom/linkedin/platform/errors/LIAppErrorCode;

    invoke-virtual {v0}, [Lcom/linkedin/platform/errors/LIAppErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/platform/errors/LIAppErrorCode;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/linkedin/platform/errors/LIAppErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
