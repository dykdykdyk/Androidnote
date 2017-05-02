.class public Lcom/tencent/connect/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    .line 20
    sput-object v0, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    .line 23
    sput-object v0, Lcom/tencent/connect/a/a;->c:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lcom/tencent/connect/a/a;->d:Ljava/lang/reflect/Method;

    .line 25
    sput-object v0, Lcom/tencent/connect/a/a;->e:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/tencent/connect/a/a;->f:Ljava/lang/reflect/Method;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/a/a;->g:Z

    return-void
.end method

