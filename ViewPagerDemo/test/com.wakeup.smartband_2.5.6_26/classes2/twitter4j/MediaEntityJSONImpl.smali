.class public Ltwitter4j/MediaEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/MediaEntityJSONImpl$Size;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x32182bdefb3fb272L


# instance fields
.field protected displayURL:Ljava/lang/String;

.field protected expandedURL:Ljava/lang/String;

.field protected id:J

.field protected mediaURL:Ljava/lang/String;

.field protected mediaURLHttps:Ljava/lang/String;

.field protected sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

