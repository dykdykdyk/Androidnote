.class public Lcom/amap/api/mapcore/util/dm;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/amap/api/mapcore/util/dv;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore/util/dm;->a:I

    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dm;->b:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/mapcore/util/dm;->d:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/dm;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

