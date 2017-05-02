.class public Lcom/tencent/open/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Lcom/tencent/open/a/f;

.field protected static final c:Lcom/tencent/open/a/b;

.field private static d:Z


# instance fields
.field protected b:Lcom/tencent/open/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/open/a/f;->d:Z

    .line 43
    sget v2, Lcom/tencent/open/a/c;->m:I

    .line 44
    sget-wide v10, Lcom/tencent/open/a/c;->n:J

    .line 46
    invoke-static {}, Lcom/tencent/open/a/f;->c()Ljava/io/File;

    move-result-object v1

    .line 48
    new-instance v0, Lcom/tencent/open/a/b;

    sget v3, Lcom/tencent/open/a/c;->g:I

    sget v4, Lcom/tencent/open/a/c;->h:I

    sget-object v5, Lcom/tencent/open/a/c;->c:Ljava/lang/String;

    sget v6, Lcom/tencent/open/a/c;->i:I

    int-to-long v6, v6

    const/16 v8, 0xa

    sget-object v9, Lcom/tencent/open/a/c;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/tencent/open/a/b;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/b;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 3

