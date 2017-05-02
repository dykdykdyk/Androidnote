.class final Ltwitter4j/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field private static final formatMapQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/ParseUtil;->formatMapQueue:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

