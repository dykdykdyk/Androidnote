.class public Lcom/google/android/gms/fitness/data/SessionDataSet;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/SessionDataSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OP:Lcom/google/android/gms/fitness/data/Session;

.field private final RG:Lcom/google/android/gms/fitness/data/DataSet;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/SessionDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/data/DataSet;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    iput-object p3, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/SessionDataSet;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/SessionDataSet;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/SessionDataSet;->zza(Lcom/google/android/gms/fitness/data/SessionDataSet;)Z

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

.method public getDataSet()Lcom/google/android/gms/fitness/data/DataSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->OP:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzab;->zza(Lcom/google/android/gms/fitness/data/SessionDataSet;Landroid/os/Parcel;I)V

    return-void
.end method
