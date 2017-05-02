.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$1;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "A"

    aput-object v1, v0, v5

    const-string/jumbo v1, "B"

    aput-object v1, v0, v6

    const-string/jumbo v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0001"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u0002"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0003"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r\n"

    aput-object v1, v0, v5

    const-string/jumbo v1, ". "

    aput-object v1, v0, v6

    const-string/jumbo v1, ", "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private correctBits([Z)[Z
    .registers 23
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2d

    .line 203
    const/4 v3, 0x6

    .line 204
    .local v3, "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 216
    .local v7, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v14

    .line 217
    .local v14, "numDataCodewords":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int v13, v19, v3

    .line 218
    .local v13, "numCodewords":I
    if-ge v13, v14, :cond_60

    .line 219
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 205
    .end local v3    # "codewordSize":I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v13    # "numCodewords":I
    .end local v14    # "numDataCodewords":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_44

    .line 206
    const/16 v3, 0x8

    .line 207
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_15

    .line 208
    .end local v3    # "codewordSize":I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x16

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5b

    .line 209
    const/16 v3, 0xa

    .line 210
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_15

    .line 212
    .end local v3    # "codewordSize":I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_5b
    const/16 v3, 0xc

    .line 213
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_15

    .line 221
    .restart local v13    # "numCodewords":I
    .restart local v14    # "numDataCodewords":I
    :cond_60
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    rem-int v16, v19, v3

    .line 222
    .local v16, "offset":I
    sub-int v15, v13, v14

    .line 224
    .local v15, "numECCodewords":I
    new-array v6, v13, [I

    .line 225
    .local v6, "dataWords":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6c
    if-ge v8, v13, :cond_7d

    .line 226
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v19

    aput v19, v6, v8

    .line 225
    add-int/lit8 v8, v8, 0x1

    add-int v16, v16, v3

    goto :goto_6c

    .line 230
    :cond_7d
    :try_start_7d
    new-instance v17, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 231
    .local v17, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v15}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_89
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_7d .. :try_end_89} :catch_9f

    .line 238
    const/16 v19, 0x1

    shl-int v19, v19, v3

    add-int/lit8 v12, v19, -0x1

    .line 239
    .local v12, "mask":I
    const/16 v18, 0x0

    .line 240
    .local v18, "stuffedBits":I
    const/4 v8, 0x0

    :goto_92
    if-ge v8, v14, :cond_b6

    .line 241
    aget v5, v6, v8

    .line 242
    .local v5, "dataWord":I
    if-eqz v5, :cond_9a

    if-ne v5, v12, :cond_a5

    .line 243
    :cond_9a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 232
    .end local v5    # "dataWord":I
    .end local v12    # "mask":I
    .end local v17    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .end local v18    # "stuffedBits":I
    :catch_9f
    move-exception v9

    .line 233
    .local v9, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 244
    .end local v9    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v5    # "dataWord":I
    .restart local v12    # "mask":I
    .restart local v17    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .restart local v18    # "stuffedBits":I
    :cond_a5
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_b1

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_b3

    .line 245
    :cond_b1
    add-int/lit8 v18, v18, 0x1

    .line 240
    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 249
    .end local v5    # "dataWord":I
    :cond_b6
    mul-int v19, v14, v3

    sub-int v19, v19, v18

    move/from16 v0, v19

    new-array v4, v0, [Z

    .line 250
    .local v4, "correctedBits":[Z
    const/4 v10, 0x0

    .line 251
    .local v10, "index":I
    const/4 v8, 0x0

    :goto_c0
    if-ge v8, v14, :cond_107

    .line 252
    aget v5, v6, v8

    .line 253
    .restart local v5    # "dataWord":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_d0

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_ed

    .line 255
    :cond_d0
    add-int v19, v10, v3

    add-int/lit8 v20, v19, -0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_ea

    const/16 v19, 0x1

    :goto_dc
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v4, v10, v0, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 256
    add-int/lit8 v19, v3, -0x1

    add-int v10, v10, v19

    .line 251
    :goto_e7
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    .line 255
    :cond_ea
    const/16 v19, 0x0

    goto :goto_dc

    .line 258
    :cond_ed
    add-int/lit8 v2, v3, -0x1

    .local v2, "bit":I
    move v11, v10

    .end local v10    # "index":I
    .local v11, "index":I
    :goto_f0
    if-ltz v2, :cond_108

    .line 259
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v19, 0x1

    shl-int v19, v19, v2

    and-int v19, v19, v5

    if-eqz v19, :cond_104

    const/16 v19, 0x1

    :goto_fe
    aput-boolean v19, v4, v11

    .line 258
    add-int/lit8 v2, v2, -0x1

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_f0

    .line 259
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :cond_104
    const/16 v19, 0x0

    goto :goto_fe

    .line 263
    .end local v2    # "bit":I
    .end local v5    # "dataWord":I
    :cond_107
    return-object v4

    .end local v10    # "index":I
    .restart local v2    # "bit":I
    .restart local v5    # "dataWord":I
    .restart local v11    # "index":I
    :cond_108
    move v10, v11

    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto :goto_e7
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .registers 4
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .prologue
    .line 175
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_14
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 185
    :goto_18
    return-object v0

    .line 179
    :pswitch_19
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_18

    .line 181
    :pswitch_1e
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_18

    .line 183
    :pswitch_23
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_18

    .line 185
    :pswitch_28
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_18

    .line 175
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .registers 16
    .param p0, "correctedBits"    # [Z

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0x8

    const/4 v10, 0x5

    .line 93
    array-length v2, p0

    .line 94
    .local v2, "endIndex":I
    sget-object v4, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 95
    .local v4, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 96
    .local v7, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 98
    .local v3, "index":I
    :cond_12
    :goto_12
    if-ge v3, v2, :cond_1c

    .line 99
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v11, :cond_4c

    .line 100
    sub-int v11, v2, v3

    if-ge v11, v10, :cond_21

    .line 144
    :cond_1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 103
    :cond_21
    invoke-static {p0, v3, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    .line 104
    .local v5, "length":I
    add-int/lit8 v3, v3, 0x5

    .line 105
    if-nez v5, :cond_35

    .line 106
    sub-int v11, v2, v3

    if-lt v11, v14, :cond_1c

    .line 109
    invoke-static {p0, v3, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    add-int/lit8 v5, v11, 0x1f

    .line 110
    add-int/lit8 v3, v3, 0xb

    .line 112
    :cond_35
    const/4 v0, 0x0

    .local v0, "charCount":I
    :goto_36
    if-ge v0, v5, :cond_3d

    .line 113
    sub-int v11, v2, v3

    if-ge v11, v13, :cond_3f

    .line 114
    move v3, v2

    .line 122
    :cond_3d
    move-object v7, v4

    .line 123
    goto :goto_12

    .line 117
    :cond_3f
    invoke-static {p0, v3, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 118
    .local v1, "code":I
    int-to-char v11, v1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v3, v3, 0x8

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 124
    .end local v0    # "charCount":I
    .end local v1    # "code":I
    .end local v5    # "length":I
    :cond_4c
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v11, :cond_7a

    const/4 v8, 0x4

    .line 125
    .local v8, "size":I
    :goto_51
    sub-int v11, v2, v3

    if-lt v11, v8, :cond_1c

    .line 128
    invoke-static {p0, v3, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 129
    .restart local v1    # "code":I
    add-int/2addr v3, v8

    .line 130
    invoke-static {v7, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v11, "CTRL_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v7

    .line 134
    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x4c

    if-ne v11, v12, :cond_12

    .line 135
    move-object v4, v7

    goto :goto_12

    .end local v1    # "code":I
    .end local v8    # "size":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_7a
    move v8, v10

    .line 124
    goto :goto_51

    .line 138
    .restart local v1    # "code":I
    .restart local v8    # "size":I
    .restart local v9    # "str":Ljava/lang/String;
    :cond_7c
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-object v7, v4

    goto :goto_12
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .registers 2
    .param p0, "t"    # C

    .prologue
    .line 151
    sparse-switch p0, :sswitch_data_16

    .line 164
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_5
    return-object v0

    .line 153
    :sswitch_6
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    .line 155
    :sswitch_9
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    .line 157
    :sswitch_c
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    .line 159
    :sswitch_f
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    .line 161
    :sswitch_12
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_5

    .line 151
    nop

    :sswitch_data_16
    .sparse-switch
        0x42 -> :sswitch_12
        0x44 -> :sswitch_f
        0x4c -> :sswitch_6
        0x4d -> :sswitch_c
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .registers 2
    .param p0, "correctedBits"    # [Z

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCode([ZII)I
    .registers 6
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "res":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    add-int v2, p1, p2

    if-ge v0, v2, :cond_11

    .line 327
    shl-int/lit8 v1, v1, 0x1

    .line 328
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_e

    .line 329
    or-int/lit8 v1, v1, 0x1

    .line 326
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 332
    :cond_11
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 4
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_9

    const/16 v0, 0x58

    :goto_4
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_9
    const/16 v0, 0x70

    goto :goto_4
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 76
    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v2

    .line 77
    .local v2, "rawbits":[Z
    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v0

    .line 78
    .local v0, "correctedBits":[Z
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v4, v5, v3, v5, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .registers 25
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v7

    .line 273
    .local v7, "compact":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v12

    .line 274
    .local v12, "layers":I
    if-eqz v7, :cond_35

    mul-int/lit8 v20, v12, 0x4

    add-int/lit8 v4, v20, 0xb

    .line 275
    .local v4, "baseMatrixSize":I
    :goto_1a
    new-array v3, v4, [I

    .line 276
    .local v3, "alignmentMap":[I
    invoke-static {v12, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 278
    .local v17, "rawbits":[Z
    if-eqz v7, :cond_3a

    .line 279
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_29
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_68

    .line 280
    aput v9, v3, v9

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 274
    .end local v3    # "alignmentMap":[I
    .end local v4    # "baseMatrixSize":I
    .end local v9    # "i":I
    .end local v17    # "rawbits":[Z
    :cond_35
    mul-int/lit8 v20, v12, 0x4

    add-int/lit8 v4, v20, 0xe

    goto :goto_1a

    .line 283
    .restart local v3    # "alignmentMap":[I
    .restart local v4    # "baseMatrixSize":I
    .restart local v17    # "rawbits":[Z
    :cond_3a
    add-int/lit8 v20, v4, 0x1

    div-int/lit8 v21, v4, 0x2

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v21, v21, 0xf

    mul-int/lit8 v21, v21, 0x2

    add-int v14, v20, v21

    .line 284
    .local v14, "matrixSize":I
    div-int/lit8 v16, v4, 0x2

    .line 285
    .local v16, "origCenter":I
    div-int/lit8 v5, v14, 0x2

    .line 286
    .local v5, "center":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4b
    move/from16 v0, v16

    if-ge v9, v0, :cond_68

    .line 287
    div-int/lit8 v20, v9, 0xf

    add-int v15, v9, v20

    .line 288
    .local v15, "newOffset":I
    sub-int v20, v16, v9

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v5, v15

    add-int/lit8 v21, v21, -0x1

    aput v21, v3, v20

    .line 289
    add-int v20, v16, v9

    add-int v21, v5, v15

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v20

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    .line 292
    .end local v5    # "center":I
    .end local v14    # "matrixSize":I
    .end local v15    # "newOffset":I
    .end local v16    # "origCenter":I
    :cond_68
    const/4 v9, 0x0

    const/16 v18, 0x0

    .local v18, "rowOffset":I
    :goto_6b
    if-ge v9, v12, :cond_10c

    .line 293
    if-eqz v7, :cond_f8

    sub-int v20, v12, v9

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v19, v20, 0x9

    .line 295
    .local v19, "rowSize":I
    :goto_75
    mul-int/lit8 v13, v9, 0x2

    .line 297
    .local v13, "low":I
    add-int/lit8 v20, v4, -0x1

    sub-int v8, v20, v13

    .line 299
    .local v8, "high":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7c
    move/from16 v0, v19

    if-ge v10, v0, :cond_104

    .line 300
    mul-int/lit8 v6, v10, 0x2

    .line 301
    .local v6, "columnOffset":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_83
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_100

    .line 303
    add-int v20, v18, v6

    add-int v20, v20, v11

    add-int v21, v13, v11

    aget v21, v3, v21

    add-int v22, v13, v10

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 306
    mul-int/lit8 v20, v19, 0x2

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    add-int v21, v13, v10

    aget v21, v3, v21

    sub-int v22, v8, v11

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 309
    mul-int/lit8 v20, v19, 0x4

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v11

    aget v21, v3, v21

    sub-int v22, v8, v10

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 312
    mul-int/lit8 v20, v19, 0x6

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v10

    aget v21, v3, v21

    add-int v22, v13, v11

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 301
    add-int/lit8 v11, v11, 0x1

    goto :goto_83

    .line 293
    .end local v6    # "columnOffset":I
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_f8
    sub-int v20, v12, v9

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v19, v20, 0xc

    goto/16 :goto_75

    .line 299
    .restart local v6    # "columnOffset":I
    .restart local v8    # "high":I
    .restart local v10    # "j":I
    .restart local v11    # "k":I
    .restart local v13    # "low":I
    .restart local v19    # "rowSize":I
    :cond_100
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7c

    .line 316
    .end local v6    # "columnOffset":I
    .end local v11    # "k":I
    :cond_104
    mul-int/lit8 v20, v19, 0x8

    add-int v18, v18, v20

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6b

    .line 318
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_10c
    return-object v17
.end method
