.class public Lcom/tencent/stat/StatConfig;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:Z

.field private static C:Ljava/lang/String;

.field static a:Lcom/tencent/stat/b;

.field static b:Lcom/tencent/stat/b;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field private static e:Lcom/tencent/stat/common/StatLogger;

.field private static f:Lcom/tencent/stat/StatReportStrategy;

.field private static g:Z

.field private static h:I

.field private static i:I

.field public static isAutoExceptionCaught:Z

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I

.field private static q:I

.field private static r:Z

.field private static s:J

.field private static t:J

.field private static u:Ljava/lang/String;

.field private static v:I

.field private static volatile w:I

.field private static x:I

.field private static y:I

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    const/16 v5, 0x400

    const/16 v4, 0x1e

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/stat/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/stat/b;-><init>(I)V

    sput-object v0, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;

    new-instance v0, Lcom/tencent/stat/b;

    invoke-direct {v0, v3}, Lcom/tencent/stat/b;-><init>(I)V

    sput-object v0, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;

    sget-object v0, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/stat/StatConfig;->f:Lcom/tencent/stat/StatReportStrategy;

    sput-boolean v3, Lcom/tencent/stat/StatConfig;->g:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/stat/StatConfig;->h:I

    sput v5, Lcom/tencent/stat/StatConfig;->i:I

    sput v4, Lcom/tencent/stat/StatConfig;->j:I

    const/4 v0, 0x3

    sput v0, Lcom/tencent/stat/StatConfig;->k:I

    sput v4, Lcom/tencent/stat/StatConfig;->l:I

    const-string/jumbo v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;

    sput-object v6, Lcom/tencent/stat/StatConfig;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;

    const/16 v0, 0x5a0

    sput v0, Lcom/tencent/stat/StatConfig;->p:I

    sput v5, Lcom/tencent/stat/StatConfig;->q:I

    sput-boolean v3, Lcom/tencent/stat/StatConfig;->r:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/stat/StatConfig;->s:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/stat/StatConfig;->t:J

    sput-boolean v3, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught:Z

    const-string/jumbo v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/stat/StatConfig;->u:Ljava/lang/String;

    sput v2, Lcom/tencent/stat/StatConfig;->v:I

    sput v2, Lcom/tencent/stat/StatConfig;->w:I

    const/16 v0, 0x14

    sput v0, Lcom/tencent/stat/StatConfig;->x:I

    sput v2, Lcom/tencent/stat/StatConfig;->y:I

    sput-boolean v2, Lcom/tencent/stat/StatConfig;->z:Z

    const/16 v0, 0x1000

    sput v0, Lcom/tencent/stat/StatConfig;->A:I

    sput-boolean v2, Lcom/tencent/stat/StatConfig;->B:Z

    sput-object v6, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

