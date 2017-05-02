.class public Lcom/tencent/wxop/stat/b/h;
.super Ljava/lang/Object;


# static fields
.field static final synthetic cH:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tencent/wxop/stat/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/wxop/stat/b/h;->cH:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

