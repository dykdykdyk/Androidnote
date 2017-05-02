.class public Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/internal/service/zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/internal/service/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->OX:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->OX:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->OX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/internal/service/zza;->zza(Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;Landroid/os/Parcel;I)V

    return-void
.end method
