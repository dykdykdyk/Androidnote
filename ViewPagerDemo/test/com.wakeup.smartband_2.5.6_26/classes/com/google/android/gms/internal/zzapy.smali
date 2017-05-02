.class public Lcom/google/android/gms/internal/zzapy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final bnX:[C


# instance fields
.field private bnY:Z

.field private final bnZ:[C

.field private boa:I

.field private bob:I

.field private boc:I

.field private bod:J

.field private boe:I

.field private bof:Ljava/lang/String;

.field private bog:[I

.field private boh:I

.field private boi:[Ljava/lang/String;

.field private boj:[I

.field private final in:Ljava/io/Reader;

.field private limit:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    new-instance v0, Lcom/google/android/gms/internal/zzapy$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapy$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapd;->blQ:Lcom/google/android/gms/internal/zzapd;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    if-nez p1, :cond_3c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    iput-object p1, p0, Lcom/google/android/gms/internal/zzapy;->in:Ljava/io/Reader;

    return-void
.end method

.method private bA()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v4, v2, :cond_32

    iget-object v5, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_188

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    if-ne v0, v2, :cond_2b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bB()I

    move-result v0

    if-eqz v0, :cond_164

    :cond_31
    :goto_31
    return v0

    :cond_32
    if-ne v4, v1, :cond_4a

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_1a6

    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_43
    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_31

    :sswitch_46
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    goto :goto_17

    :cond_4a
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4f

    if-ne v4, v7, :cond_ae

    :cond_4f
    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    if-ne v4, v7, :cond_6f

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1b4

    const-string/jumbo v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_68
    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    move v0, v1

    goto :goto_31

    :sswitch_6c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :cond_6f
    :sswitch_6f
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1c2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zze(C)Z

    move-result v0

    if-eqz v0, :cond_a6

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_31

    :sswitch_8b
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_31

    :sswitch_90
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_31

    :sswitch_98
    if-eq v4, v7, :cond_9e

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    move v0, v1

    goto :goto_31

    :cond_9e
    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a6
    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_ae
    if-ne v4, v0, :cond_e8

    iget-object v5, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v5

    packed-switch v5, :pswitch_data_1d0

    :pswitch_bf
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_c7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lt v5, v6, :cond_d6

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_d6
    iget-object v5, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto/16 :goto_17

    :cond_e8
    const/4 v5, 0x6

    if-ne v4, v5, :cond_fc

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    if-eqz v5, :cond_f2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bI()V

    :cond_f2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    :cond_fc
    if-ne v4, v3, :cond_117

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_10c

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    :cond_10c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto/16 :goto_17

    :cond_117
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_124
    if-ne v4, v2, :cond_12a

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    :cond_12a
    :sswitch_12a
    if-eq v4, v2, :cond_12e

    if-ne v4, v1, :cond_13c

    :cond_12e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iput v3, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    move v0, v3

    goto/16 :goto_31

    :cond_13c
    const-string/jumbo v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_144
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    :sswitch_14d
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    if-ne v0, v2, :cond_154

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :cond_154
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    :sswitch_15a
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    :sswitch_15f
    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    move v0, v2

    goto/16 :goto_31

    :cond_164
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bC()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zze(C)Z

    move-result v0

    if-nez v0, :cond_17e

    const-string/jumbo v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_31

    nop

    :sswitch_data_188
    .sparse-switch
        0x22 -> :sswitch_14d
        0x27 -> :sswitch_144
        0x2c -> :sswitch_12a
        0x3b -> :sswitch_12a
        0x5b -> :sswitch_15a
        0x5d -> :sswitch_124
        0x7b -> :sswitch_15f
    .end sparse-switch

    :sswitch_data_1a6
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_46
        0x5d -> :sswitch_43
    .end sparse-switch

    :sswitch_data_1b4
    .sparse-switch
        0x2c -> :sswitch_6f
        0x3b -> :sswitch_6c
        0x7d -> :sswitch_68
    .end sparse-switch

    :sswitch_data_1c2
    .sparse-switch
        0x22 -> :sswitch_8b
        0x27 -> :sswitch_90
        0x7d -> :sswitch_98
    .end sparse-switch

    :pswitch_data_1d0
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_bf
        :pswitch_bf
        :pswitch_c7
    .end packed-switch
.end method

.method private bB()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2e

    :cond_f
    const-string/jumbo v2, "true"

    const-string/jumbo v1, "TRUE"

    const/4 v0, 0x5

    :goto_16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_1b
    if-ge v4, v5, :cond_68

    iget v6, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lt v6, v7, :cond_50

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v6

    if-nez v6, :cond_50

    move v0, v3

    :goto_2d
    return v0

    :cond_2e
    const/16 v1, 0x66

    if-eq v0, v1, :cond_36

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3e

    :cond_36
    const-string/jumbo v2, "false"

    const-string/jumbo v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_16

    :cond_3e
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_46

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_4e

    :cond_46
    const-string/jumbo v2, "null"

    const-string/jumbo v1, "NULL"

    const/4 v0, 0x7

    goto :goto_16

    :cond_4e
    move v0, v3

    goto :goto_2d

    :cond_50
    iget-object v6, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v7, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    move v0, v3

    goto :goto_2d

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_68
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lt v1, v2, :cond_77

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v1

    if-eqz v1, :cond_86

    :cond_77
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapy;->zze(C)Z

    move-result v1

    if-eqz v1, :cond_86

    move v0, v3

    goto :goto_2d

    :cond_86
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_2d
.end method

.method private bC()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    :goto_f
    add-int v2, v1, v10

    if-ne v2, v0, :cond_3f

    array-length v0, v11

    if-ne v10, v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_20
    const/4 v0, 0x2

    if-ne v3, v0, :cond_df

    if-eqz v4, :cond_df

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2d

    if-eqz v5, :cond_df

    :cond_2d
    if-eqz v5, :cond_dc

    :goto_2f
    iput-wide v6, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto :goto_17

    :cond_3b
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    :cond_3f
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_f8

    const/16 v8, 0x30

    if-lt v2, v8, :cond_4e

    const/16 v8, 0x39

    if-le v2, v8, :cond_8b

    :cond_4e
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zze(C)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_17

    :sswitch_56
    if-nez v3, :cond_64

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_5d
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_f

    :cond_64
    const/4 v2, 0x5

    if-ne v3, v2, :cond_6b

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_6d
    const/4 v2, 0x5

    if-ne v3, v2, :cond_74

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_74
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_76
    const/4 v2, 0x2

    if-eq v3, v2, :cond_7c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_80

    :cond_7c
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_80
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_82
    const/4 v2, 0x2

    if-ne v3, v2, :cond_89

    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_89
    const/4 v0, 0x0

    goto :goto_17

    :cond_8b
    const/4 v8, 0x1

    if-eq v3, v8, :cond_90

    if-nez v3, :cond_98

    :cond_90
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_98
    const/4 v8, 0x2

    if-ne v3, v8, :cond_cb

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_a4

    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_a4
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_c1

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_c9

    cmp-long v2, v8, v6

    if-gez v2, :cond_c9

    :cond_c1
    const/4 v2, 0x1

    :goto_c2
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_5d

    :cond_c9
    const/4 v2, 0x0

    goto :goto_c2

    :cond_cb
    const/4 v2, 0x3

    if-ne v3, v2, :cond_d2

    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_d2
    const/4 v2, 0x5

    if-eq v3, v2, :cond_d8

    const/4 v2, 0x6

    if-ne v3, v2, :cond_f3

    :cond_d8
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_dc
    neg-long v6, v6

    goto/16 :goto_2f

    :cond_df
    const/4 v0, 0x2

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x4

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x7

    if-ne v3, v0, :cond_f0

    :cond_e8
    iput v10, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    goto/16 :goto_17

    :cond_f0
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_f3
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5d

    :sswitch_data_f8
    .sparse-switch
        0x2b -> :sswitch_6d
        0x2d -> :sswitch_56
        0x2e -> :sswitch_82
        0x45 -> :sswitch_76
        0x65 -> :sswitch_76
    .end sparse-switch
.end method

.method private bD()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_3
    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-ge v3, v4, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_17
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_25
    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    return-object v0

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    :cond_39
    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_40
    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v1

    if-nez v1, :cond_61

    move v1, v2

    goto :goto_1a

    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_61
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private bE()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :sswitch_18
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    :goto_1d
    return-void

    :cond_1e
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private bF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    if-nez v0, :cond_c

    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method

.method private bG()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private bH()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_c6

    :goto_23
    return v0

    :sswitch_24
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-le v0, v1, :cond_3a

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_42
    if-ge v1, v2, :cond_9e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_5a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_5a

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5a
    const/16 v4, 0x61

    if-lt v3, v4, :cond_69

    const/16 v4, 0x66

    if-gt v3, v4, :cond_69

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_57

    :cond_69
    const/16 v4, 0x41

    if-lt v3, v4, :cond_78

    const/16 v4, 0x46

    if-gt v3, v4, :cond_78

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_57

    :cond_78
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string/jumbo v2, "\\u"

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_94
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_94

    :cond_9e
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto/16 :goto_23

    :sswitch_a6
    const/16 v0, 0x9

    goto/16 :goto_23

    :sswitch_aa
    const/16 v0, 0x8

    goto/16 :goto_23

    :sswitch_ae
    const/16 v0, 0xa

    goto/16 :goto_23

    :sswitch_b2
    const/16 v0, 0xd

    goto/16 :goto_23

    :sswitch_b6
    const/16 v0, 0xc

    goto/16 :goto_23

    :sswitch_ba
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    goto/16 :goto_23

    :sswitch_data_c6
    .sparse-switch
        0xa -> :sswitch_ba
        0x62 -> :sswitch_aa
        0x66 -> :sswitch_b6
        0x6e -> :sswitch_ae
        0x72 -> :sswitch_b2
        0x74 -> :sswitch_a6
        0x75 -> :sswitch_24
    .end sparse-switch
.end method

.method private bI()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzdg(Z)I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_34
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzapy;->bnX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto :goto_1d
.end method

.method private getColumnNumber()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzapy;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return p1
.end method

.method static synthetic zzag(Lcom/google/android/gms/internal/zzapy;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return v0
.end method

.method private zzagw(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    aput p1, v0, v1

    return-void
.end method

.method private zzagx(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    if-eq v2, v3, :cond_5b

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1e
    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    array-length v4, v1

    iget v5, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    add-int/lit8 p1, p1, 0x1

    :cond_55
    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-lt v2, p1, :cond_20

    const/4 v0, 0x1

    :cond_5a
    return v0

    :cond_5b
    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    goto :goto_1e
.end method

.method static synthetic zzah(Lcom/google/android/gms/internal/zzapy;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    return v0
.end method

.method static synthetic zzai(Lcom/google/android/gms/internal/zzapy;)I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic zzaj(Lcom/google/android/gms/internal/zzapy;)I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private zzdg(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    :goto_6
    if-ne v1, v0, :cond_52

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_4e

    if-eqz p1, :cond_df

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "End of input at line "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    :cond_52
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_64

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    move v1, v2

    goto :goto_6

    :cond_64
    const/16 v4, 0x20

    if-eq v1, v4, :cond_e1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_e1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_72

    move v1, v2

    goto :goto_6

    :cond_72
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_c9

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    if-ne v2, v0, :cond_8f

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    if-nez v0, :cond_8f

    move v0, v1

    :goto_8e
    return v0

    :cond_8f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v3, v0

    sparse-switch v0, :sswitch_data_e4

    move v0, v1

    goto :goto_8e

    :sswitch_9b
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const-string/jumbo v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    const-string/jumbo v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b2
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    goto/16 :goto_6

    :sswitch_ba
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bG()V

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    goto/16 :goto_6

    :cond_c9
    const/16 v0, 0x23

    if-ne v1, v0, :cond_db

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bG()V

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    goto/16 :goto_6

    :cond_db
    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    move v0, v1

    goto :goto_8e

    :cond_df
    const/4 v0, -0x1

    goto :goto_8e

    :cond_e1
    move v1, v2

    goto/16 :goto_6

    :sswitch_data_e4
    .sparse-switch
        0x2a -> :sswitch_9b
        0x2f -> :sswitch_ba
    .end sparse-switch
.end method

.method private zze(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a

    const/4 v0, 0x1

    :goto_4
    return v0

    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bF()V

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private zzf(C)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    move v3, v0

    :goto_c
    if-ge v3, v1, :cond_4a

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_22

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3d

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bH()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    move v2, v0

    :cond_3b
    :goto_3b
    move v3, v2

    goto :goto_c

    :cond_3d
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3b

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    goto :goto_3b

    :cond_4a
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zzg(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2e

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_12

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    return-void

    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bH()C

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    :cond_1f
    :goto_1f
    move v2, v1

    goto :goto_7

    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    goto :goto_1f

    :cond_2e
    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zzuu(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->limit:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagx(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boa:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->bob:I

    :cond_2c
    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto :goto_1

    :cond_33
    move v0, v1

    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4a
    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method private zzuv(Ljava/lang/String;)Ljava/io/IOException;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaqb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaqb;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagw(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzagw(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bn()Lcom/google/android/gms/internal/zzapz;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bom:Lcom/google/android/gms/internal/zzapz;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_1d
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_20
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_23
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_26
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_29
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    :pswitch_2c
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bot:Lcom/google/android/gms/internal/zzapz;

    goto :goto_13

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected END_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x49

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected END_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    :goto_e
    if-ge v0, v2, :cond_41

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->bog:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v1

    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a boolean but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    iput v4, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    long-to-double v0, v0

    :goto_22
    return-wide v0

    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    :cond_3b
    :goto_3b
    iput v5, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    if-nez v2, :cond_128

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_128

    :cond_53
    new-instance v2, Lcom/google/android/gms/internal/zzaqb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x66

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "JSON forbids NaN and infinities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaqb;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a4
    if-eq v0, v2, :cond_aa

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b8

    :cond_aa
    if-ne v0, v2, :cond_b5

    const/16 v0, 0x27

    :goto_ae
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    goto :goto_3b

    :cond_b5
    const/16 v0, 0x22

    goto :goto_ae

    :cond_b8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_c4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    goto/16 :goto_3b

    :cond_c4
    if-eq v0, v5, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_128
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_22
.end method

.method public nextInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_7b

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6c

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x59

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    iput v6, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_7a
    return v0

    :cond_7b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_ff

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    :goto_93
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_18e

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    if-eq v0, v2, :cond_105

    const/16 v1, 0x9

    if-ne v0, v1, :cond_12c

    :cond_105
    if-ne v0, v2, :cond_129

    const/16 v0, 0x27

    :goto_109
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    :try_start_10f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_124
    .catch Ljava/lang/NumberFormatException; {:try_start_10f .. :try_end_124} :catch_126

    goto/16 :goto_7a

    :catch_126
    move-exception v0

    goto/16 :goto_93

    :cond_129
    const/16 v0, 0x22

    goto :goto_109

    :cond_12c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_7a
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_20

    iput v6, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    :goto_1f
    return-wide v0

    :cond_20
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    :goto_38
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_133

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    if-eq v0, v2, :cond_aa

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d1

    :cond_aa
    if-ne v0, v2, :cond_ce

    const/16 v0, 0x27

    :goto_ae
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    :try_start_b4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_c9} :catch_cb

    goto/16 :goto_1f

    :catch_cb
    move-exception v0

    goto/16 :goto_38

    :cond_ce
    const/16 v0, 0x22

    goto :goto_ae

    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1f
.end method

.method public nextName()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bD()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected null but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bD()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bof:Ljava/lang/String;

    goto :goto_10

    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapy;->bod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapy;->bnZ:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto :goto_10

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Expected a string but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzapy;->bnY:Z

    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bA()I

    move-result v2

    :cond_c
    if-ne v2, v5, :cond_2f

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzapy;->zzagw(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_13
    iput v1, p0, Lcom/google/android/gms/internal/zzapy;->boc:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boj:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->boi:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_2f
    if-ne v2, v4, :cond_37

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzapy;->zzagw(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_37
    const/4 v3, 0x4

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->boh:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_4f
    const/16 v3, 0xe

    if-eq v2, v3, :cond_57

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5b

    :cond_57
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->bE()V

    goto :goto_13

    :cond_5b
    const/16 v3, 0x8

    if-eq v2, v3, :cond_63

    const/16 v3, 0xc

    if-ne v2, v3, :cond_69

    :cond_63
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzg(C)V

    goto :goto_13

    :cond_69
    const/16 v3, 0x9

    if-eq v2, v3, :cond_71

    const/16 v3, 0xd

    if-ne v2, v3, :cond_77

    :cond_71
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzapy;->zzg(C)V

    goto :goto_13

    :cond_77
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzapy;->boe:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzapy;->pos:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;->getColumnNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
