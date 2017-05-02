.class public final enum Lim/yixin/sdk/api/YXMessage$MessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/YXMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/yixin/sdk/api/YXMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum CARD:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum FILE:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum IMAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum MAP:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum MUSIC:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum TEXT:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum UNKNOWN:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum VIDEO:Lim/yixin/sdk/api/YXMessage$MessageType;

.field public static final enum WEB_PAGE:Lim/yixin/sdk/api/YXMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->UNKNOWN:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->TEXT:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v5}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->IMAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "MUSIC"

    invoke-direct {v0, v1, v6}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->MUSIC:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v7}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->VIDEO:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->FILE:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "MAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->MAP:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->CARD:Lim/yixin/sdk/api/YXMessage$MessageType;

    new-instance v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    const-string/jumbo v1, "WEB_PAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/yixin/sdk/api/YXMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->WEB_PAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    const/16 v0, 0x9

    new-array v0, v0, [Lim/yixin/sdk/api/YXMessage$MessageType;

    sget-object v1, Lim/yixin/sdk/api/YXMessage$MessageType;->UNKNOWN:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lim/yixin/sdk/api/YXMessage$MessageType;->TEXT:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lim/yixin/sdk/api/YXMessage$MessageType;->IMAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lim/yixin/sdk/api/YXMessage$MessageType;->MUSIC:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lim/yixin/sdk/api/YXMessage$MessageType;->VIDEO:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/yixin/sdk/api/YXMessage$MessageType;->FILE:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/yixin/sdk/api/YXMessage$MessageType;->MAP:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/yixin/sdk/api/YXMessage$MessageType;->CARD:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/yixin/sdk/api/YXMessage$MessageType;->WEB_PAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->$VALUES:[Lim/yixin/sdk/api/YXMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/yixin/sdk/api/YXMessage$MessageType;
    .registers 2

    const-class v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/yixin/sdk/api/YXMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lim/yixin/sdk/api/YXMessage$MessageType;
    .registers 1

    sget-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->$VALUES:[Lim/yixin/sdk/api/YXMessage$MessageType;

    invoke-virtual {v0}, [Lim/yixin/sdk/api/YXMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/yixin/sdk/api/YXMessage$MessageType;

    return-object v0
.end method
