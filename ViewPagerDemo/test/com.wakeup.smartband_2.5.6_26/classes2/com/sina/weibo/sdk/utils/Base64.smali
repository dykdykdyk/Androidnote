.class public final Lcom/sina/weibo/sdk/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x100

    .line 3
    const-string/jumbo v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    .line 6
    new-array v1, v3, [B

    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    .line 9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-lt v0, v3, :cond_35

    .line 12
    const/16 v0, 0x41

    :goto_14
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3d

    .line 15
    const/16 v0, 0x61

    :goto_1a
    const/16 v1, 0x7a

    if-le v0, v1, :cond_47

    .line 18
    const/16 v0, 0x30

    :goto_20
    const/16 v1, 0x39

    if-le v0, v1, :cond_53

    .line 21
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 22
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 23
    return-void

    .line 10
    :cond_35
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 13
    :cond_3d
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 16
    :cond_47
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 19
    :cond_53
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public constructor <init>()V
    .registers 1

