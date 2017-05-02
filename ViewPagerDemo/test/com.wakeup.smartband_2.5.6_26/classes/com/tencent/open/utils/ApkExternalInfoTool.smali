.class public final Lcom/tencent/open/utils/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/ApkExternalInfoTool$1;,
        Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field public static final CHANNELID:Ljava/lang/String; = "channelNo"

.field private static final a:Lcom/tencent/open/utils/ZipLong;

.field private static final b:Lcom/tencent/open/utils/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 116
    new-instance v0, Lcom/tencent/open/utils/ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/open/utils/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/open/utils/ApkExternalInfoTool;->a:Lcom/tencent/open/utils/ZipLong;

    .line 119
    new-instance v0, Lcom/tencent/open/utils/ZipShort;

    const v1, 0x96fb

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/open/utils/ApkExternalInfoTool;->b:Lcom/tencent/open/utils/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

