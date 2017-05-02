.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/Query$ResultType;,
        Ltwitter4j/Query$Unit;
    }
.end annotation


# static fields
.field public static final KILOMETERS:Ltwitter4j/Query$Unit;

.field public static final MILES:Ltwitter4j/Query$Unit;

.field public static final MIXED:Ltwitter4j/Query$ResultType;

.field public static final POPULAR:Ltwitter4j/Query$ResultType;

.field public static final RECENT:Ltwitter4j/Query$ResultType;

.field private static final WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

.field private static final serialVersionUID:J = 0x63dec3c8328258c3L


# instance fields
.field private count:I

.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private nextPageQuery:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private resultType:Ltwitter4j/Query$ResultType;

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 335
    sget-object v0, Ltwitter4j/Query$Unit;->mi:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->MILES:Ltwitter4j/Query$Unit;

    .line 336
    sget-object v0, Ltwitter4j/Query$Unit;->km:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->KILOMETERS:Ltwitter4j/Query$Unit;

    .line 418
    sget-object v0, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->MIXED:Ltwitter4j/Query$ResultType;

    .line 422
    sget-object v0, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->POPULAR:Ltwitter4j/Query$ResultType;

    .line 426
    sget-object v0, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->RECENT:Ltwitter4j/Query$ResultType;

    .line 464
    new-instance v0, Ltwitter4j/HttpParameter;

    const-string/jumbo v1, "with_twitter_user_id"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

