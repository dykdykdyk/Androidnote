.class public Lcom/tencent/stat/StatMid;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/stat/common/StatLogger;

.field private static b:Lcom/tencent/stat/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

