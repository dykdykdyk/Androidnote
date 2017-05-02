.class public Lcom/tencent/stat/StatService;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/stat/a/c;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:J

.field private static volatile d:J

.field private static volatile e:I

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static h:Ljava/util/Map;
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

.field private static i:Lcom/tencent/stat/common/StatLogger;

.field private static j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;

    sput-wide v2, Lcom/tencent/stat/StatService;->c:J

    sput-wide v2, Lcom/tencent/stat/StatService;->d:J

    const/4 v0, 0x0

    sput v0, Lcom/tencent/stat/StatService;->e:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/stat/StatService;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/StatService;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/stat/StatService;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

