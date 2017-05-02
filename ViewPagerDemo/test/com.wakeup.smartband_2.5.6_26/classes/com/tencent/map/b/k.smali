.class public final Lcom/tencent/map/b/k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/k$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/b/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x2710

    const/16 v1, 0x4e20

    const/16 v4, 0x61a8

    const/16 v3, 0x3a98

    .line 19
    sput v5, Lcom/tencent/map/b/k;->a:I

    .line 21
    sput v3, Lcom/tencent/map/b/k;->b:I

    .line 23
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/map/b/k;->c:I

    .line 25
    sput v1, Lcom/tencent/map/b/k;->d:I

    .line 27
    sput v4, Lcom/tencent/map/b/k;->e:I

    .line 29
    sput v3, Lcom/tencent/map/b/k;->f:I

    .line 31
    const/16 v0, 0x2ee0

    sput v0, Lcom/tencent/map/b/k;->a:I

    sput v1, Lcom/tencent/map/b/k;->b:I

    const/16 v0, 0x1f40

    sput v0, Lcom/tencent/map/b/k;->c:I

    sput v1, Lcom/tencent/map/b/k;->d:I

    sput v4, Lcom/tencent/map/b/k;->e:I

    sput v3, Lcom/tencent/map/b/k;->f:I

    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_82

    if-nez v1, :cond_82

    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_82

    const-string/jumbo v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string/jumbo v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    sput v3, Lcom/tencent/map/b/k;->a:I

    sput v4, Lcom/tencent/map/b/k;->b:I

    sput v5, Lcom/tencent/map/b/k;->c:I

    sput v4, Lcom/tencent/map/b/k;->d:I

    const v0, 0x88b8

    sput v0, Lcom/tencent/map/b/k;->e:I

    sput v3, Lcom/tencent/map/b/k;->f:I

    .line 16
    :cond_82
    return-void
.end method

.method public static a()I
    .registers 6

