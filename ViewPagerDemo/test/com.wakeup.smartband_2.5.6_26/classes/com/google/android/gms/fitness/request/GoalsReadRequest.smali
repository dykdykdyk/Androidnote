.class public Lcom/google/android/gms/fitness/request/GoalsReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/GoalsReadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Tr:Lcom/google/android/gms/internal/zztt;

.field private final Ts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->versionCode:I

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Tr:Lcom/google/android/gms/internal/zztt;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    return-void

    :cond_d
    invoke-static {p2}, Lcom/google/android/gms/internal/zztt$zza;->zzfu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztt;

    move-result-object v0

    goto :goto_8
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/GoalsReadRequest;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzb(Lcom/google/android/gms/fitness/request/GoalsReadRequest;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Tr:Lcom/google/android/gms/internal/zztt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zztt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->Ts:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzr;->zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method
