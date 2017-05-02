.class public Lcom/tencent/open/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/tencent/open/b/c;->a:Ljava/lang/String;

    .line 108
    sput-object v0, Lcom/tencent/open/b/c;->b:Ljava/lang/String;

    .line 129
    sput-object v0, Lcom/tencent/open/b/c;->c:Ljava/lang/String;

    .line 149
    sput-object v0, Lcom/tencent/open/b/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

