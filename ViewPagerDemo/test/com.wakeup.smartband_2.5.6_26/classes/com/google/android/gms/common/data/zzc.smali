.class public abstract Lcom/google/android/gms/common/data/zzc;
.super Ljava/lang/Object;


# instance fields
.field protected final xi:Lcom/google/android/gms/common/data/DataHolder;

.field protected zK:I

.field private zL:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/zzc;->zzfz(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/data/zzc;

    if-eqz v1, :cond_32

    check-cast p1, Lcom/google/android/gms/common/data/zzc;

    iget v1, p1, Lcom/google/android/gms/common/data/zzc;->zK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p1, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p1, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v1, v2, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zze(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzg(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzf(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/common/data/DataHolder;->zza(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method protected zzatc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    return v0
.end method

.method protected zzfz(I)V
    .registers 4

    if-ltz p1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1b

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbr(Z)V

    iput p1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzgb(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzhm(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->zzhm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected zzhn(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected zzho(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->xi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zK:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zL:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzi(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
