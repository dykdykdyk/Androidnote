.class Lcom/tencent/wxop/stat/ak;
.super Ljava/lang/Object;


# static fields
.field private static cx:Lcom/tencent/wxop/stat/b/b;

.field private static dj:Lcom/tencent/wxop/stat/ak;

.field private static dk:Landroid/content/Context;


# instance fields
.field private cv:J

.field dg:Lorg/apache/http/impl/client/DefaultHttpClient;

.field dh:Lcom/tencent/wxop/stat/b/f;

.field di:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    sput-object v1, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    sput-object v1, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    return-void
.end method

