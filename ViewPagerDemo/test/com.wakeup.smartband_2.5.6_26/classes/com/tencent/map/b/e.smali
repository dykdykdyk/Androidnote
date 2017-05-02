.class public final Lcom/tencent/map/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/e$c;,
        Lcom/tencent/map/b/e$b;,
        Lcom/tencent/map/b/e$a;
    }
.end annotation


# static fields
.field private static b:Landroid/location/LocationManager;

.field private static d:F


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/tencent/map/b/e$a;

.field private e:Lcom/tencent/map/b/e$c;

.field private f:Lcom/tencent/map/b/e$b;

.field private g:Z

.field private h:[B

.field private i:I

.field private j:J

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/map/b/e;->d:F

    return-void
.end method

.method public constructor <init>()V
    .registers 4

