.class Ltwitter4j/TwitterAPIConfigurationJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "TwitterAPIConfigurationJSONImpl.java"

# interfaces
.implements Ltwitter4j/TwitterAPIConfiguration;


# static fields
.field private static final serialVersionUID:J = -0x31ce59ac93ba9d46L


# instance fields
.field private charactersReservedPerMedia:I

.field private maxMediaPerUpload:I

.field private nonUsernamePaths:[Ljava/lang/String;

.field private photoSizeLimit:I

.field private photoSizes:Ljava/util/Map;
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

.field private shortURLLength:I

.field private shortURLLengthHttps:I


# direct methods
