.class public Lcom/tencent/mid/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:J

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "ts"

    sput-object v0, Lcom/tencent/mid/b/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "times"

    sput-object v0, Lcom/tencent/mid/b/a;->b:Ljava/lang/String;

    const-string/jumbo v0, "mfreq"

    sput-object v0, Lcom/tencent/mid/b/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "mdays"

    sput-object v0, Lcom/tencent/mid/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

