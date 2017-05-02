.class public final Lcom/amap/api/mapcore/util/fk;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fk$c;,
        Lcom/amap/api/mapcore/util/fk$a;,
        Lcom/amap/api/mapcore/util/fk$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final q:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/fk$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/amap/api/mapcore/util/fn;

.field private o:J

.field private final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/fk;->a:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/amap/api/mapcore/util/fm;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/fm;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/fk;->q:Ljava/io/OutputStream;

    return-void
.end method

