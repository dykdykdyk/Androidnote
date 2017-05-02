.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 27
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "TERMINATOR"

    new-array v2, v5, [I

    fill-array-data v2, :array_e0

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 28
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "NUMERIC"

    new-array v2, v5, [I

    fill-array-data v2, :array_ea

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 29
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "ALPHANUMERIC"

    new-array v2, v5, [I

    fill-array-data v2, :array_f4

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "STRUCTURED_APPEND"

    new-array v2, v5, [I

    fill-array-data v2, :array_fe

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 31
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "BYTE"

    new-array v2, v5, [I

    fill-array-data v2, :array_108

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "ECI"

    const/4 v2, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_112

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 33
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "KANJI"

    const/4 v2, 0x6

    new-array v3, v5, [I

    fill-array-data v3, :array_11c

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "FNC1_FIRST_POSITION"

    const/4 v2, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_126

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 35
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "FNC1_SECOND_POSITION"

    const/16 v2, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_130

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const-string/jumbo v1, "HANZI"

    const/16 v2, 0x9

    new-array v3, v5, [I

    fill-array-data v3, :array_13a

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    return-void

    .line 27
    :array_e0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 28
    :array_ea
    .array-data 4
        0xa
        0xc
        0xe
    .end array-data

    .line 29
    :array_f4
    .array-data 4
        0x9
        0xb
        0xd
    .end array-data

    .line 30
    :array_fe
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 31
    :array_108
    .array-data 4
        0x8
        0x10
        0x10
    .end array-data

    .line 32
    :array_112
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 33
    :array_11c
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data

    .line 34
    :array_126
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 35
    :array_130
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 37
    :array_13a
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .registers 5
    .param p3, "characterCountBitsForVersions"    # [I
    .param p4, "bits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 44
    iput p4, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 45
    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .param p0, "bits"    # I

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_28

    .line 76
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55
    :pswitch_9
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 74
    :goto_b
    return-object v0

    .line 57
    :pswitch_c
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 59
    :pswitch_f
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 61
    :pswitch_12
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 63
    :pswitch_15
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 65
    :pswitch_18
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 67
    :pswitch_1b
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 69
    :pswitch_1e
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 71
    :pswitch_21
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 74
    :pswitch_24
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 53
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_3
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_24
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 5
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    .line 88
    .local v0, "number":I
    const/16 v2, 0x9

    if-gt v0, v2, :cond_e

    .line 89
    const/4 v1, 0x0

    .line 95
    .local v1, "offset":I
    :goto_9
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget v2, v2, v1

    return v2

    .line 90
    .end local v1    # "offset":I
    :cond_e
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_14

    .line 91
    const/4 v1, 0x1

    .restart local v1    # "offset":I
    goto :goto_9

    .line 93
    .end local v1    # "offset":I
    :cond_14
    const/4 v1, 0x2

    .restart local v1    # "offset":I
    goto :goto_9
.end method
