.class public Lcom/amap/api/mapcore/util/dr;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x80

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_60

    sput-object v0, Lcom/amap/api/mapcore/util/dr;->a:[C

    .line 70
    new-array v0, v3, [B

    sput-object v0, Lcom/amap/api/mapcore/util/dr;->b:[B

    .line 71
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_1a

    .line 72
    sget-object v1, Lcom/amap/api/mapcore/util/dr;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 74
    :cond_1a
    const/16 v0, 0x41

    :goto_1c
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2a

    .line 75
    sget-object v1, Lcom/amap/api/mapcore/util/dr;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 77
    :cond_2a
    const/16 v0, 0x61

    :goto_2c
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3c

    .line 78
    sget-object v1, Lcom/amap/api/mapcore/util/dr;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 80
    :cond_3c
    const/16 v0, 0x30

    :goto_3e
    const/16 v1, 0x39

    if-gt v0, v1, :cond_4e

    .line 81
    sget-object v1, Lcom/amap/api/mapcore/util/dr;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 83
    :cond_4e
    sget-object v0, Lcom/amap/api/mapcore/util/dr;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 84
    sget-object v0, Lcom/amap/api/mapcore/util/dr;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 85
    return-void

    .line 19
    nop

    :array_60
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
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
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

