.class public Lcom/tencent/stat/n;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/stat/common/StatLogger;

.field private static f:Lcom/tencent/stat/n;


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:I

.field c:Lcom/tencent/stat/DeviceInfo;

.field private d:Lcom/tencent/stat/w;

.field private g:Ljava/util/HashMap;
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
    .registers 1

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;

    return-void
.end method

