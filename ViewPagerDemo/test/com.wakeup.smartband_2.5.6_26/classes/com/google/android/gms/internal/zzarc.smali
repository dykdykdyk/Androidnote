.class public final Lcom/google/android/gms/internal/zzarc;
.super Ljava/lang/Object;


# instance fields
.field private bql:I

.field private bqm:I

.field private bqn:I

.field private bqo:I

.field private bqp:I

.field private bqq:I

.field private bqr:I

.field private bqs:I

.field private bqt:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqs:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqt:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarc;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iput p2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    return-void
.end method

.method private cJ()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqn:I

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqn:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqn:I

    goto :goto_19
.end method

.method public static zzahb(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/zzarc;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzarc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzarc;-><init>([BII)V

    return-object v0
.end method

.method public static zzbd([B)Lcom/google/android/gms/internal/zzarc;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzarc;->zzb([BII)Lcom/google/android/gms/internal/zzarc;

    move-result-object v0

    return-object v0
.end method

.method public static zzcv(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public cA()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    return v0
.end method

.method public cB()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cI()J

    move-result-wide v0

    return-wide v0
.end method

.method public cC()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public cD()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarc;->zzahb(I)I

    move-result v0

    return v0
.end method

.method public cE()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cG()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzarc;->zzcv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public cF()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v0

    if-ltz v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    if-ltz v1, :cond_22

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    if-ltz v1, :cond_31

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cV()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0
.end method

.method public cG()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cV()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0
.end method

.method public cH()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public cI()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cM()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public cK()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    sub-int v0, v1, v0

    goto :goto_8
.end method

.method public cL()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public cM()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public cw()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cL()Z

    move-result v1

    if-eqz v1, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqp:I

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqp:I

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqp:I

    if-nez v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cW()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqp:I

    goto :goto_9
.end method

.method public cx()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cw()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarc;->zzaha(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public cy()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cG()J

    move-result-wide v0

    return-wide v0
.end method

.method public cz()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cG()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v1

    if-gez v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cU()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_b
    if-nez v1, :cond_10

    sget-object v0, Lcom/google/android/gms/internal/zzarn;->bqM:[B

    :goto_f
    return-object v0

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_1c
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarc;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    goto :goto_f
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cI()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cU()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarc;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    sget-object v4, Lcom/google/android/gms/internal/zzari;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    return-object v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzark;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bqs:I

    if-lt v1, v2, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cZ()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarc;->zzahc(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzark;->zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzarc;->zzagz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarc;->zzahd(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzark;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqs:I

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cZ()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzark;->zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzarn;->zzaj(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarc;->zzagz(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqr:I

    return-void
.end method

.method public zzad(II)[B
    .registers 7

    if-nez p2, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzarn;->bqM:[B

    :goto_4
    return-object v0

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarc;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public zzagz(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzarj;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqp:I

    if-eq v0, p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cX()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_9
    return-void
.end method

.method public zzaha(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarn;->zzaht(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cY()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cA()I

    :goto_10
    return v0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cI()J

    goto :goto_10

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cF()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzarc;->zzahf(I)V

    goto :goto_10

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cx()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarn;->zzahu(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzarn;->zzaj(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzarc;->zzagz(I)V

    goto :goto_10

    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarc;->cH()I

    goto :goto_10

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public zzahc(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzarj;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cU()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    if-le v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarc;->cJ()V

    return v1
.end method

.method public zzahd(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarc;->cJ()V

    return-void
.end method

.method public zzahe(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-gez p1, :cond_51

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bql:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    return-void
.end method

.method public zzahf(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cU()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqq:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarc;->zzahf(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqm:I

    iget v1, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzarc;->bqo:I

    return-void

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/zzarj;->cT()Lcom/google/android/gms/internal/zzarj;

    move-result-object v0

    throw v0
.end method
