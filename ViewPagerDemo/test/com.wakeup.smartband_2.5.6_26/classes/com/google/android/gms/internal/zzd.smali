.class public Lcom/google/android/gms/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzo;


# instance fields
.field private zzn:I

.field private zzo:I

.field private final zzp:I

.field private final zzq:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzd;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    iput p2, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    iput p3, p0, Lcom/google/android/gms/internal/zzd;->zzq:F

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/zzd;->zzq:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzd;->zze()Z

    move-result v0

    if-nez v0, :cond_1a

    throw p1

    :cond_1a
    return-void
.end method

.method public zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzn:I

    return v0
.end method

.method public zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    return v0
.end method

.method protected zze()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
