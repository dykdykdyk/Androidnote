.class public Lcom/amap/api/mapcore/util/dq;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/dq$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dq;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/dq;->b:Z

    .line 271
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dq;->c:Ljava/lang/String;

    .line 415
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dq;->d:Ljava/lang/String;

    .line 468
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dq;->e:Ljava/lang/String;

    .line 518
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/dq;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

