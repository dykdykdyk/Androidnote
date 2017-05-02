.class public Lcom/renn/rennsdk/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lcom/renn/rennsdk/codec/BinaryDecoder;
.implements Lcom/renn/rennsdk/codec/BinaryEncoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 49
    const-string/jumbo v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/renn/rennsdk/codec/Base64;->CHUNK_SEPARATOR:[B

    .line 93
    new-array v2, v8, [B

    sput-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    .line 94
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-lt v0, v8, :cond_56

    .line 101
    const/16 v0, 0x5a

    :goto_22
    const/16 v2, 0x41

    if-ge v0, v2, :cond_5e

    .line 104
    const/16 v0, 0x7a

    :goto_28
    const/16 v2, 0x61

    if-ge v0, v2, :cond_68

    .line 107
    const/16 v0, 0x39

    :goto_2e
    const/16 v2, 0x30

    if-ge v0, v2, :cond_74

    .line 111
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 112
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 114
    const/4 v0, 0x0

    :goto_3b
    const/16 v2, 0x19

    if-le v0, v2, :cond_80

    .line 118
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_42
    const/16 v2, 0x33

    if-le v0, v2, :cond_8a

    .line 122
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_49
    const/16 v2, 0x3d

    if-le v0, v2, :cond_96

    .line 126
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 127
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 128
    return-void

    .line 99
    .end local v1    # "j":I
    :cond_56
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 102
    :cond_5e
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 101
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 105
    :cond_68
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 108
    :cond_74
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 115
    :cond_80
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 119
    .restart local v1    # "j":I
    :cond_8a
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 123
    :cond_96
    sget-object v2, Lcom/renn/rennsdk/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method public constructor <init>()V
    .registers 1

