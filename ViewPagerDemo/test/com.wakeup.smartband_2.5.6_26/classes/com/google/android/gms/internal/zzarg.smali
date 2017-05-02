.class public final Lcom/google/android/gms/internal/zzarg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final bqx:Lcom/google/android/gms/internal/zzarh;


# instance fields
.field private bqA:[Lcom/google/android/gms/internal/zzarh;

.field private bqy:Z

.field private bqz:[I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzarh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzarh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarg;->bqx:Lcom/google/android/gms/internal/zzarh;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzarg;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzarg;->bqy:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzarg;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zzarh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iput v2, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_11

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_10
    return p1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private idealIntArraySize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzarg;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private zza([I[II)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_e

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private zza([Lcom/google/android/gms/internal/zzarh;[Lcom/google/android/gms/internal/zzarh;I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_12

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzarh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private zzahs(I)I
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-gt v1, v0, :cond_1b

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_14

    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    :cond_14
    if-le v3, p1, :cond_19

    add-int/lit8 v0, v2, -0x1

    goto :goto_5

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    :cond_1b
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1a
.end method


# virtual methods
.method public final cR()Lcom/google/android/gms/internal/zzarg;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarg;->size()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/zzarg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzarg;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v0, v0, v1

    if-eqz v0, :cond_28

    iget-object v4, v3, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarh;

    aput-object v0, v4, v1

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_2c
    iput v2, v3, Lcom/google/android/gms/internal/zzarg;->mSize:I

    return-object v3
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarg;->cR()Lcom/google/android/gms/internal/zzarg;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzarg;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarg;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarg;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzarg;->zza([I[II)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iget v4, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzarg;->zza([Lcom/google/android/gms/internal/zzarh;[Lcom/google/android/gms/internal/zzarh;I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    if-ge v0, v2, :cond_1c

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarh;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1c
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarg;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    return v0
.end method

.method zza(ILcom/google/android/gms/internal/zzarh;)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzarg;->zzahs(I)I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aput-object p2, v1, v0

    :goto_b
    return-void

    :cond_c
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzarg;->bqx:Lcom/google/android/gms/internal/zzarh;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aput-object p2, v1, v0

    goto :goto_b

    :cond_23
    iget v1, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    array-length v2, v2

    if-lt v1, v2, :cond_4a

    iget v1, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzarg;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/zzarh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    :cond_4a
    iget v1, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqz:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzarg;->mSize:I

    goto :goto_b
.end method

.method zzahq(I)Lcom/google/android/gms/internal/zzarh;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzarg;->zzahs(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzarg;->bqx:Lcom/google/android/gms/internal/zzarh;

    if-ne v1, v2, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v0, v1, v0

    goto :goto_f
.end method

.method zzahr(I)Lcom/google/android/gms/internal/zzarh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarg;->bqA:[Lcom/google/android/gms/internal/zzarh;

    aget-object v0, v0, p1

    return-object v0
.end method
