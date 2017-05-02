.class public Lcom/tencent/stat/common/a;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tencent/stat/common/c;

.field private static d:Lcom/tencent/stat/common/StatLogger;

.field private static e:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/a;->d:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;

    return-void
.end method

