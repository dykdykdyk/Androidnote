.class public Lcom/tencent/wxop/stat/t;
.super Ljava/lang/Object;


# static fields
.field private static bZ:Lcom/tencent/wxop/stat/b/b;

.field private static ca:Landroid/content/Context;

.field private static cb:Lcom/tencent/wxop/stat/t;


# instance fields
.field volatile aI:I

.field private ab:Ljava/lang/String;

.field private bW:Lcom/tencent/wxop/stat/ac;

.field private bX:Lcom/tencent/wxop/stat/ac;

.field bY:Lcom/tencent/wxop/stat/b/c;

.field private be:Lcom/tencent/wxop/stat/b/f;

.field private bq:Ljava/lang/String;

.field private cc:I

.field private cd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/tencent/wxop/stat/a/d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ce:Z

.field private cf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    sput-object v1, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    sput-object v1, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    return-void
.end method

