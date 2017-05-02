.class public Lcom/amap/api/mapcore/util/ex;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final a:Lcom/amap/api/mapcore/util/ex;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/fg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/mapcore/util/ex;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ex;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/ex;->a:Lcom/amap/api/mapcore/util/ex;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

