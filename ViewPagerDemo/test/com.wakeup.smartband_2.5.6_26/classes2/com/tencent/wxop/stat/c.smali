.class public final Lcom/tencent/wxop/stat/c;
.super Ljava/lang/Object;


# static fields
.field static M:Ljava/lang/String;

.field private static N:Lcom/tencent/wxop/stat/b/b;

.field static O:Lcom/tencent/wxop/stat/ah;

.field static P:Lcom/tencent/wxop/stat/ah;

.field private static Q:Lcom/tencent/wxop/stat/d;

.field private static R:Z

.field private static S:Z

.field private static T:I

.field private static U:I

.field private static V:I

.field static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;

.field private static Y:Ljava/lang/String;

.field private static Z:Ljava/lang/String;

.field static aA:I

.field private static aa:Ljava/lang/String;

.field static ab:Ljava/lang/String;

.field private static ac:I

.field static ad:Z

.field static ae:I

.field static af:J

.field private static ag:I

.field static ah:Z

.field private static ai:J

.field private static aj:J

.field public static ak:Z

.field static volatile al:Ljava/lang/String;

.field private static volatile am:Ljava/lang/String;

.field private static an:I

.field private static volatile ao:I

.field private static ap:I

.field private static aq:I

.field private static ar:Z

.field private static as:I

.field private static at:Z

.field private static au:Ljava/lang/String;

.field private static av:Z

.field private static aw:Lcom/tencent/wxop/stat/ai;

.field static ax:Z

.field static ay:I

.field static az:J

.field static c:Ljava/lang/String;

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x64

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/c;->N:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Lcom/tencent/wxop/stat/ah;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/ah;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/c;->O:Lcom/tencent/wxop/stat/ah;

    new-instance v0, Lcom/tencent/wxop/stat/ah;

    invoke-direct {v0, v3}, Lcom/tencent/wxop/stat/ah;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/c;->P:Lcom/tencent/wxop/stat/ah;

    sget-object v0, Lcom/tencent/wxop/stat/d;->aE:Lcom/tencent/wxop/stat/d;

    sput-object v0, Lcom/tencent/wxop/stat/c;->Q:Lcom/tencent/wxop/stat/d;

    sput-boolean v2, Lcom/tencent/wxop/stat/c;->R:Z

    sput-boolean v3, Lcom/tencent/wxop/stat/c;->S:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/wxop/stat/c;->T:I

    const v0, 0x186a0

    sput v0, Lcom/tencent/wxop/stat/c;->U:I

    sput v5, Lcom/tencent/wxop/stat/c;->V:I

    const/16 v0, 0xa

    sput v0, Lcom/tencent/wxop/stat/c;->w:I

    sput v6, Lcom/tencent/wxop/stat/c;->x:I

    sput v5, Lcom/tencent/wxop/stat/c;->y:I

    sput v3, Lcom/tencent/wxop/stat/c;->z:I

    const-string/jumbo v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/wxop/stat/c;->c:Ljava/lang/String;

    const-string/jumbo v0, "__HIBERNATE__TIME"

    sput-object v0, Lcom/tencent/wxop/stat/c;->W:Ljava/lang/String;

    const-string/jumbo v0, "__MTA_KILL__"

    sput-object v0, Lcom/tencent/wxop/stat/c;->M:Ljava/lang/String;

    sput-object v4, Lcom/tencent/wxop/stat/c;->X:Ljava/lang/String;

    const-string/jumbo v0, "mta_channel"

    sput-object v0, Lcom/tencent/wxop/stat/c;->aa:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/c;->ab:Ljava/lang/String;

    const/16 v0, 0xb4

    sput v0, Lcom/tencent/wxop/stat/c;->ac:I

    sput-boolean v2, Lcom/tencent/wxop/stat/c;->ad:Z

    sput v6, Lcom/tencent/wxop/stat/c;->ae:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/wxop/stat/c;->af:J

    const/16 v0, 0x400

    sput v0, Lcom/tencent/wxop/stat/c;->ag:I

    sput-boolean v3, Lcom/tencent/wxop/stat/c;->ah:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/c;->ai:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/wxop/stat/c;->aj:J

    sput-boolean v3, Lcom/tencent/wxop/stat/c;->ak:Z

    const-string/jumbo v0, "pingma.qq.com:80"

    sput-object v0, Lcom/tencent/wxop/stat/c;->al:Ljava/lang/String;

    const-string/jumbo v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/wxop/stat/c;->am:Ljava/lang/String;

    sput v2, Lcom/tencent/wxop/stat/c;->an:I

    sput v2, Lcom/tencent/wxop/stat/c;->ao:I

    const/16 v0, 0x14

    sput v0, Lcom/tencent/wxop/stat/c;->ap:I

    sput v2, Lcom/tencent/wxop/stat/c;->aq:I

    sput-boolean v2, Lcom/tencent/wxop/stat/c;->ar:Z

    const/16 v0, 0x1000

    sput v0, Lcom/tencent/wxop/stat/c;->as:I

    sput-boolean v2, Lcom/tencent/wxop/stat/c;->at:Z

    sput-object v4, Lcom/tencent/wxop/stat/c;->au:Ljava/lang/String;

    sput-boolean v2, Lcom/tencent/wxop/stat/c;->av:Z

    sput-object v4, Lcom/tencent/wxop/stat/c;->aw:Lcom/tencent/wxop/stat/ai;

    sput-boolean v3, Lcom/tencent/wxop/stat/c;->ax:Z

    sput v2, Lcom/tencent/wxop/stat/c;->ay:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/wxop/stat/c;->az:J

    const/16 v0, 0x200

    sput v0, Lcom/tencent/wxop/stat/c;->aA:I

    return-void
.end method

.method public static A()I
    .registers 1

