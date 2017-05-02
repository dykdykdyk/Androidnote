.class public Lcom/amap/api/mapcore/util/bi;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bi$a;,
        Lcom/amap/api/mapcore/util/bi$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static d:Ljava/lang/String;

.field private static volatile j:Lcom/amap/api/mapcore/util/bi;


# instance fields
.field c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/bg;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/mapcore/util/bi$b;

.field public f:Lcom/amap/api/mapcore/util/bm;

.field g:Lcom/amap/api/mapcore/util/bo;

.field h:Lcom/amap/api/mapcore/util/bl;

.field private i:Landroid/content/Context;

.field private k:Lcom/amap/api/mapcore/util/bi$a;

.field private l:Lcom/amap/api/mapcore/util/br;

.field private m:Lcom/amap/api/mapcore/util/bx;

.field private n:Ljava/util/concurrent/ExecutorService;

.field private o:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/bi;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/bi;->b:Z

    .line 86
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/bi;->d:Ljava/lang/String;

    return-void
.end method

