.class public Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const-string/jumbo v0, "yy.MM.dd.HH"

    invoke-static {v0}, Lcom/tencent/open/a/d$d;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/a/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

