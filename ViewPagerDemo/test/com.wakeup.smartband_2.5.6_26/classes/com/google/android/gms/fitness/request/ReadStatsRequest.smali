.class public Lcom/google/android/gms/fitness/request/ReadStatsRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ReadStatsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final TC:Lcom/google/android/gms/internal/zzue;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzue$zza;->zzgf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->TC:Lcom/google/android/gms/internal/zzue;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->SS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->TC:Lcom/google/android/gms/internal/zzue;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzue;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->SS:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "ReadStatsRequest"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzx;->zza(Lcom/google/android/gms/fitness/request/ReadStatsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
