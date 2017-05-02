.class public Lcom/tencent/open/utils/Util;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/Util$TBufferedOutputStream;,
        Lcom/tencent/open/utils/Util$Statistic;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/open/utils/Util;->a:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/open/utils/Util;->b:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/open/utils/Util;->c:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/open/utils/Util;->d:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/tencent/open/utils/Util;->e:I

    .line 796
    const-string/jumbo v0, "0123456789ABCDEF"

    sput-object v0, Lcom/tencent/open/utils/Util;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

