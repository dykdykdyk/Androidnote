.class public Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricObjective"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$MetricObjective;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Qr:Ljava/lang/String;

.field private final Qs:D

.field private final value:D

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;DD)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypeName"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "value"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "initValue"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzv;->zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbfe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qr:Ljava/lang/String;

    return-object v0
.end method

.method public zzbff()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    return-wide v0
.end method

.method public zzbfg()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->Qs:D

    return-wide v0
.end method
