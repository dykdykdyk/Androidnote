.class public Lcom/tencent/mid/api/MidService;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;

.field private static c:Lcom/tencent/mid/api/MidService;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mid/api/MidService;->a:Landroid/content/Context;

    sput-object v0, Lcom/tencent/mid/api/MidService;->b:Landroid/os/Handler;

    sput-object v0, Lcom/tencent/mid/api/MidService;->c:Lcom/tencent/mid/api/MidService;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.INTERNET"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tencent/mid/api/MidService;->d:Ljava/util/List;

    const-string/jumbo v0, "http://pingmid.qq.com:80/"

    sput-object v0, Lcom/tencent/mid/api/MidService;->e:Ljava/lang/String;

    const-string/jumbo v0, "pingmid.qq.com"

    sput-object v0, Lcom/tencent/mid/api/MidService;->f:Ljava/lang/String;

    sput-boolean v4, Lcom/tencent/mid/api/MidService;->g:Z

    return-void
.end method

