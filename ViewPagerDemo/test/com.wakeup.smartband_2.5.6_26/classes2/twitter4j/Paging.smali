.class public final Ltwitter4j/Paging;
.super Ljava/lang/Object;
.source "Paging.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final COUNT:Ljava/lang/String; = "count"

.field private static final NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

.field private static final NULL_PARAMETER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field static final PER_PAGE:Ljava/lang/String; = "per_page"

.field static final S:[C

.field static final SMCP:[C

.field private static final serialVersionUID:J = -0x6448500cdfd4aeafL


# instance fields
.field private count:I

.field private maxId:J

.field private page:I

.field private sinceId:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x73

    aput-char v1, v0, v2

    sput-object v0, Ltwitter4j/Paging;->S:[C

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1e

    sput-object v0, Ltwitter4j/Paging;->SMCP:[C

    .line 52
    new-array v0, v2, [Ltwitter4j/HttpParameter;

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    return-void

    .line 41
    :array_1e
    .array-data 2
        0x73s
        0x6ds
        0x63s
        0x70s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

