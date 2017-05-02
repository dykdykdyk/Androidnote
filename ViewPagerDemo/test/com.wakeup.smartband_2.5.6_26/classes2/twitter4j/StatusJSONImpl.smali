.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Status;


# static fields
.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x59aac71ba3de09f1L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private extendedMediaEntities:[Ltwitter4j/ExtendedMediaEntity;

.field private favoriteCount:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private lang:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private quotedStatus:Ltwitter4j/Status;

.field private quotedStatusId:J

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private scopes:Ltwitter4j/Scopes;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private withheldInCountries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Ltwitter4j/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 5

