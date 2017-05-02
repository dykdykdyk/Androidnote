.class public Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Tq:Lcom/google/android/gms/internal/zzui;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzui$zza;->zzgj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->Tq:Lcom/google/android/gms/internal/zzui;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->Tq:Lcom/google/android/gms/internal/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzui;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "GetSyncInfoRequest {%d, %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->mVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->Tq:Lcom/google/android/gms/internal/zzui;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzq;->zza(Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;Landroid/os/Parcel;I)V

    return-void
.end method
