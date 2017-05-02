.class final Lcom/google/android/gms/internal/zzapa$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private final blt:Ljava/lang/reflect/Type;

.field private final blu:Ljava/lang/reflect/Type;

.field private final blv:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_25

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5a

    :cond_1c
    move v0, v2

    :goto_1d
    if-nez p1, :cond_21

    if-eqz v0, :cond_5c

    :cond_21
    move v0, v2

    :goto_22
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoz;->zzbs(Z)V

    :cond_25
    if-nez p1, :cond_5e

    const/4 v0, 0x0

    :goto_28
    iput-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blt:Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapa;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blu:Ljava/lang/reflect/Type;

    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v1, v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoz;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzj(Ljava/lang/reflect/Type;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_5a
    move v0, v1

    goto :goto_1d

    :cond_5c
    move v0, v1

    goto :goto_22

    :cond_5e
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapa;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_28

    :cond_63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzapa;->zza(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blt:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blu:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blu:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blt:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapa;->zzcq(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blu:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzg(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const-string/jumbo v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->zzg(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_33
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4d

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapa$zzb;->blv:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/zzapa;->zzg(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4d
    const-string/jumbo v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
