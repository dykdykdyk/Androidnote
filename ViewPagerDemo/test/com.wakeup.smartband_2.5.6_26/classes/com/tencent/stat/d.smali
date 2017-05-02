.class Lcom/tencent/stat/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/stat/common/StatLogger;

.field private static d:J

.field private static e:Lcom/tencent/stat/d;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/stat/d;->d:J

    sput-object v2, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    sput-object v2, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

