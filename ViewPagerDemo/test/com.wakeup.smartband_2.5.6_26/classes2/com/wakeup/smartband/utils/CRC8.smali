.class public Lcom/wakeup/smartband/utils/CRC8;
.super Ljava/lang/Object;
.source "CRC8.java"


# static fields
.field private static dscrc_table:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x100

    .line 27
    new-array v4, v6, [B

    sput-object v4, Lcom/wakeup/smartband/utils/CRC8;->dscrc_table:[B

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v6, :cond_2d

    .line 33
    move v0, v2

    .line 34
    .local v0, "acc":I
    const/4 v1, 0x0

    .line 36
    .local v1, "crc":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    const/16 v4, 0x8

    if-ge v3, v4, :cond_25

    .line 37
    xor-int v4, v0, v1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 38
    xor-int/lit8 v4, v1, 0x18

    shr-int/lit8 v4, v4, 0x1

    or-int/lit16 v1, v4, 0x80

    .line 42
    :goto_1d
    shr-int/lit8 v0, v0, 0x1

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 40
    :cond_22
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 45
    :cond_25
    sget-object v4, Lcom/wakeup/smartband/utils/CRC8;->dscrc_table:[B

    int-to-byte v5, v1

    aput-byte v5, v4, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 47
    .end local v0    # "acc":I
    .end local v1    # "crc":I
    .end local v3    # "j":I
    :cond_2d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

