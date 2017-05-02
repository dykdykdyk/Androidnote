.class public Lcom/tencent/mid/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/mid/api/MidCallback;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/mid/a/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

