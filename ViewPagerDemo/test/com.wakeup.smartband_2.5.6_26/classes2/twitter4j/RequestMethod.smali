.class public final enum Ltwitter4j/RequestMethod;
.super Ljava/lang/Enum;
.source "RequestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltwitter4j/RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/RequestMethod;

.field public static final enum DELETE:Ltwitter4j/RequestMethod;

.field public static final enum GET:Ltwitter4j/RequestMethod;

.field public static final enum HEAD:Ltwitter4j/RequestMethod;

.field public static final enum POST:Ltwitter4j/RequestMethod;

.field public static final enum PUT:Ltwitter4j/RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Ltwitter4j/RequestMethod;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Ltwitter4j/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    new-instance v0, Ltwitter4j/RequestMethod;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Ltwitter4j/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    new-instance v0, Ltwitter4j/RequestMethod;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Ltwitter4j/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    new-instance v0, Ltwitter4j/RequestMethod;

    const-string/jumbo v1, "HEAD"

    invoke-direct {v0, v1, v5}, Ltwitter4j/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/RequestMethod;->HEAD:Ltwitter4j/RequestMethod;

    new-instance v0, Ltwitter4j/RequestMethod;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v6}, Ltwitter4j/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ltwitter4j/RequestMethod;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Ltwitter4j/RequestMethod;->HEAD:Ltwitter4j/RequestMethod;

    aput-object v1, v0, v5

    sget-object v1, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/RequestMethod;->$VALUES:[Ltwitter4j/RequestMethod;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/RequestMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Ltwitter4j/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltwitter4j/RequestMethod;

    return-object v0
.end method

.method public static values()[Ltwitter4j/RequestMethod;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Ltwitter4j/RequestMethod;->$VALUES:[Ltwitter4j/RequestMethod;

    invoke-virtual {v0}, [Ltwitter4j/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/RequestMethod;

    return-object v0
.end method
