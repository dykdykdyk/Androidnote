.class public Lcom/google/android/gms/fitness/request/DataInsertRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataInsertRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RG:Lcom/google/android/gms/fitness/data/DataSet;

.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private final SW:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SW:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzuh;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SW:Z

    return-void
.end method

.method private zzc(Lcom/google/android/gms/fitness/request/DataInsertRequest;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->zzc(Lcom/google/android/gms/fitness/request/DataInsertRequest;)Z

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

.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataSet()Lcom/google/android/gms/fitness/data/DataSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->RG:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zze;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->SW:Z

    return v0
.end method
