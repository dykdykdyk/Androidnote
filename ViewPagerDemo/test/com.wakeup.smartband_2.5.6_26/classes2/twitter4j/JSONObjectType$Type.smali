.class public final enum Ltwitter4j/JSONObjectType$Type;
.super Ljava/lang/Enum;
.source "JSONObjectType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/JSONObjectType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltwitter4j/JSONObjectType$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/JSONObjectType$Type;

.field public static final enum BLOCK:Ltwitter4j/JSONObjectType$Type;

.field public static final enum DELETE:Ltwitter4j/JSONObjectType$Type;

.field public static final enum DIRECT_MESSAGE:Ltwitter4j/JSONObjectType$Type;

.field public static final enum DISCONNECTION:Ltwitter4j/JSONObjectType$Type;

.field public static final enum FAVORITE:Ltwitter4j/JSONObjectType$Type;

.field public static final enum FAVORITED_RETWEET:Ltwitter4j/JSONObjectType$Type;

.field public static final enum FOLLOW:Ltwitter4j/JSONObjectType$Type;

.field public static final enum FRIENDS:Ltwitter4j/JSONObjectType$Type;

.field public static final enum LIMIT:Ltwitter4j/JSONObjectType$Type;

.field public static final enum QUOTED_TWEET:Ltwitter4j/JSONObjectType$Type;

.field public static final enum RETWEETED_RETWEET:Ltwitter4j/JSONObjectType$Type;

.field public static final enum SCRUB_GEO:Ltwitter4j/JSONObjectType$Type;

.field public static final enum SENDER:Ltwitter4j/JSONObjectType$Type;

.field public static final enum STALL_WARNING:Ltwitter4j/JSONObjectType$Type;

.field public static final enum STATUS:Ltwitter4j/JSONObjectType$Type;

.field public static final enum UNBLOCK:Ltwitter4j/JSONObjectType$Type;

.field public static final enum UNFAVORITE:Ltwitter4j/JSONObjectType$Type;

.field public static final enum UNFOLLOW:Ltwitter4j/JSONObjectType$Type;

.field public static final enum UNKNOWN:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_DELETE:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_CREATED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_DESTROYED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_MEMBER_ADDED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_MEMBER_DELETED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_SUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_UNSUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_LIST_UPDATED:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_SUSPEND:Ltwitter4j/JSONObjectType$Type;

.field public static final enum USER_UPDATE:Ltwitter4j/JSONObjectType$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "SENDER"

    invoke-direct {v0, v1, v3}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->SENDER:Ltwitter4j/JSONObjectType$Type;

    .line 26
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "STATUS"

    invoke-direct {v0, v1, v4}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->STATUS:Ltwitter4j/JSONObjectType$Type;

    .line 27
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "DIRECT_MESSAGE"

    invoke-direct {v0, v1, v5}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->DIRECT_MESSAGE:Ltwitter4j/JSONObjectType$Type;

    .line 28
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v6}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->DELETE:Ltwitter4j/JSONObjectType$Type;

    .line 29
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "LIMIT"

    invoke-direct {v0, v1, v7}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->LIMIT:Ltwitter4j/JSONObjectType$Type;

    .line 30
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "STALL_WARNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->STALL_WARNING:Ltwitter4j/JSONObjectType$Type;

    .line 31
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "SCRUB_GEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->SCRUB_GEO:Ltwitter4j/JSONObjectType$Type;

    .line 32
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "FRIENDS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->FRIENDS:Ltwitter4j/JSONObjectType$Type;

    .line 33
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "FAVORITE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->FAVORITE:Ltwitter4j/JSONObjectType$Type;

    .line 34
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "UNFAVORITE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->UNFAVORITE:Ltwitter4j/JSONObjectType$Type;

    .line 35
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "FOLLOW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->FOLLOW:Ltwitter4j/JSONObjectType$Type;

    .line 36
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "UNFOLLOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->UNFOLLOW:Ltwitter4j/JSONObjectType$Type;

    .line 37
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_MEMBER_ADDED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_ADDED:Ltwitter4j/JSONObjectType$Type;

    .line 38
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_MEMBER_DELETED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_DELETED:Ltwitter4j/JSONObjectType$Type;

    .line 39
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_SUBSCRIBED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_SUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    .line 40
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_UNSUBSCRIBED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    .line 41
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_CREATED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_CREATED:Ltwitter4j/JSONObjectType$Type;

    .line 42
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_UPDATED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UPDATED:Ltwitter4j/JSONObjectType$Type;

    .line 43
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_LIST_DESTROYED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_DESTROYED:Ltwitter4j/JSONObjectType$Type;

    .line 44
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_UPDATE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_UPDATE:Ltwitter4j/JSONObjectType$Type;

    .line 45
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_DELETE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_DELETE:Ltwitter4j/JSONObjectType$Type;

    .line 46
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "USER_SUSPEND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->USER_SUSPEND:Ltwitter4j/JSONObjectType$Type;

    .line 47
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "BLOCK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->BLOCK:Ltwitter4j/JSONObjectType$Type;

    .line 48
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "UNBLOCK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->UNBLOCK:Ltwitter4j/JSONObjectType$Type;

    .line 49
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "DISCONNECTION"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->DISCONNECTION:Ltwitter4j/JSONObjectType$Type;

    .line 50
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "RETWEETED_RETWEET"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->RETWEETED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    .line 51
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "FAVORITED_RETWEET"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->FAVORITED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    .line 52
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "QUOTED_TWEET"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->QUOTED_TWEET:Ltwitter4j/JSONObjectType$Type;

    .line 53
    new-instance v0, Ltwitter4j/JSONObjectType$Type;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONObjectType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->UNKNOWN:Ltwitter4j/JSONObjectType$Type;

    .line 24
    const/16 v0, 0x1d

    new-array v0, v0, [Ltwitter4j/JSONObjectType$Type;

    sget-object v1, Ltwitter4j/JSONObjectType$Type;->SENDER:Ltwitter4j/JSONObjectType$Type;

    aput-object v1, v0, v3

    sget-object v1, Ltwitter4j/JSONObjectType$Type;->STATUS:Ltwitter4j/JSONObjectType$Type;

    aput-object v1, v0, v4

    sget-object v1, Ltwitter4j/JSONObjectType$Type;->DIRECT_MESSAGE:Ltwitter4j/JSONObjectType$Type;

    aput-object v1, v0, v5

    sget-object v1, Ltwitter4j/JSONObjectType$Type;->DELETE:Ltwitter4j/JSONObjectType$Type;

    aput-object v1, v0, v6

    sget-object v1, Ltwitter4j/JSONObjectType$Type;->LIMIT:Ltwitter4j/JSONObjectType$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->STALL_WARNING:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->SCRUB_GEO:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FRIENDS:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FAVORITE:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNFAVORITE:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FOLLOW:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNFOLLOW:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_ADDED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_DELETED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_SUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_CREATED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UPDATED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_DESTROYED:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_UPDATE:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_DELETE:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_SUSPEND:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->BLOCK:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNBLOCK:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->DISCONNECTION:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->RETWEETED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FAVORITED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->QUOTED_TWEET:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNKNOWN:Ltwitter4j/JSONObjectType$Type;

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/JSONObjectType$Type;->$VALUES:[Ltwitter4j/JSONObjectType$Type;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/JSONObjectType$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Ltwitter4j/JSONObjectType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltwitter4j/JSONObjectType$Type;

    return-object v0
.end method

.method public static values()[Ltwitter4j/JSONObjectType$Type;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Ltwitter4j/JSONObjectType$Type;->$VALUES:[Ltwitter4j/JSONObjectType$Type;

    invoke-virtual {v0}, [Ltwitter4j/JSONObjectType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/JSONObjectType$Type;

    return-object v0
.end method
