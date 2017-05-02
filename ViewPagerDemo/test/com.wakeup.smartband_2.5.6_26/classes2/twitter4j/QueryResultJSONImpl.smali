.class final Ltwitter4j/QueryResultJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "QueryResultJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/QueryResult;


# static fields
.field private static final serialVersionUID:J = -0x4a6101184cfac714L


# instance fields
.field private completedIn:D

.field private count:I

.field private maxId:J

.field private nextResults:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private sinceId:J

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
