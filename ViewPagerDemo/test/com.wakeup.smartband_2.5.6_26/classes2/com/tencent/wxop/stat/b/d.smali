.class public final Lcom/tencent/wxop/stat/b/d;
.super Ljava/lang/Object;


# static fields
.field static cw:Lcom/tencent/wxop/stat/b/e;

.field private static cx:Lcom/tencent/wxop/stat/b/b;

.field private static cz:Lorg/json/JSONObject;


# instance fields
.field c:Ljava/lang/String;

.field cy:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/b/d;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/b/d;->cz:Lorg/json/JSONObject;

    return-void
.end method

