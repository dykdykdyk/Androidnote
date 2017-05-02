.class public Lcom/tencent/wxop/stat/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile S:Z

.field static volatile aI:I

.field private static aK:Lcom/tencent/wxop/stat/b/f;

.field private static volatile aL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/wxop/stat/a/b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aO:J

.field private static volatile aP:J

.field private static volatile aQ:I

.field private static volatile aR:Ljava/lang/String;

.field private static volatile aS:Ljava/lang/String;

.field private static aT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static aU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static aV:Lcom/tencent/wxop/stat/b/b;

.field private static aW:Ljava/lang/Thread$UncaughtExceptionHandler;

.field static volatile aX:J

.field private static aY:Landroid/content/Context;

.field static volatile aZ:J

.field private static volatile af:J

.field private static al:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aL:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aM:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aN:Ljava/util/Map;

    sput-wide v2, Lcom/tencent/wxop/stat/e;->aO:J

    sput-wide v2, Lcom/tencent/wxop/stat/e;->af:J

    sput-wide v2, Lcom/tencent/wxop/stat/e;->aP:J

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    sput v4, Lcom/tencent/wxop/stat/e;->aQ:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/e;->aR:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/e;->aS:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aT:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aU:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    sput-object v5, Lcom/tencent/wxop/stat/e;->aW:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wxop/stat/e;->S:Z

    sput v4, Lcom/tencent/wxop/stat/e;->aI:I

    sput-wide v2, Lcom/tencent/wxop/stat/e;->aX:J

    sput-object v5, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    sput-wide v2, Lcom/tencent/wxop/stat/e;->aZ:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

