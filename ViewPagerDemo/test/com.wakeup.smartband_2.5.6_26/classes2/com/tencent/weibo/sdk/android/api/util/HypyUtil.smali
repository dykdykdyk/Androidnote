.class public Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;
.super Ljava/lang/Object;
.source "HypyUtil.java"


# static fields
.field private static BEGIN:I

.field private static END:I

.field private static chartable:[C

.field private static initialtable:[C

.field private static table:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x1a

    .line 8
    const v1, 0xb0a1

    sput v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->BEGIN:I

    .line 9
    const v1, 0xf7fe

    sput v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    .line 13
    new-array v1, v3, [C

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->chartable:[C

    .line 19
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    .line 22
    new-array v1, v3, [C

    fill-array-data v1, :array_58

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->initialtable:[C

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-lt v0, v3, :cond_2a

    .line 31
    sget-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    sget v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    aput v2, v1, v3

    .line 32
    return-void

    .line 29
    :cond_2a
    sget-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    sget-object v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->chartable:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->gbValue(C)I

    move-result v2

    aput v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 13
    nop

    :array_3a
    .array-data 2
        0x554as
        -0x7d53s
        0x64e6s
        0x642ds
        -0x7902s
        0x53d1s
        0x5676s
        0x54c8s
        0x54c8s
        0x51fbs
        0x5580s
        0x5783s
        0x5988s
        0x62ffs
        0x54e6s
        0x556as
        0x671fs
        0x7136s
        0x6492s
        0x584cs
        0x584cs
        0x584cs
        0x6316s
        0x6614s
        0x538bs
        0x531ds
    .end array-data

    .line 22
    :array_58
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x74s
        0x74s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

