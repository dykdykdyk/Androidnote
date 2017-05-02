.class Lcom/google/android/gms/internal/zzarh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bqB:Lcom/google/android/gms/internal/zzarf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzarf",
            "<**>;"
        }
    .end annotation
.end field

.field private bqC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarm;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    return-void
.end method

.method private toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzx()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzard;->zzbe([B)Lcom/google/android/gms/internal/zzard;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzarh;->zza(Lcom/google/android/gms/internal/zzard;)V

    return-object v0
.end method


# virtual methods
.method public final cS()Lcom/google/android/gms/internal/zzarh;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzarh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzarh;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-nez v0, :cond_25

    :cond_15
    :goto_15
    return-object v3

    :cond_16
    iget-object v0, v3, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_11

    :catch_1e
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzark;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzark;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzark;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto :goto_15

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto :goto_15

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    new-array v4, v2, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    move v2, v1

    :goto_59
    array-length v1, v0

    if-ge v2, v1, :cond_15

    aget-object v1, v0, v2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_59

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto :goto_15

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto :goto_15

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto/16 :goto_15

    :cond_9e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto/16 :goto_15

    :cond_b0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    goto/16 :goto_15

    :cond_c2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/zzark;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/zzark;

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/gms/internal/zzark;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    move v2, v1

    :goto_d2
    array-length v1, v0

    if-ge v2, v1, :cond_15

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzark;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzark;

    aput-object v1, v4, v2
    :try_end_df
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_25 .. :try_end_df} :catch_1e

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->cS()Lcom/google/android/gms/internal/zzarh;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lcom/google/android/gms/internal/zzarh;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzarh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-eqz v1, :cond_ae

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_4

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_4

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_4

    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_4

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_4

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4

    :cond_c0
    :try_start_c0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarh;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzarh;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cb} :catch_ce

    move-result v0

    goto/16 :goto_4

    :catch_ce
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarh;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method zza(Lcom/google/android/gms/internal/zzard;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzarf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarm;->zza(Lcom/google/android/gms/internal/zzard;)V

    goto :goto_12
.end method

.method zza(Lcom/google/android/gms/internal/zzarm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzarf;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzarf",
            "<*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to getExtension with a different Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzarf;->zzay(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    return-object v0
.end method

.method zzx()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->bqB:Lcom/google/android/gms/internal/zzarf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarf;->zzcu(Ljava/lang/Object;)I

    move-result v1

    :cond_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarh;->bqC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarm;->zzx()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_15
.end method
