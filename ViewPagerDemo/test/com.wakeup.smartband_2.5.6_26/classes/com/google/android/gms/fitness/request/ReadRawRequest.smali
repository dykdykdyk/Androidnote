.class public Lcom/google/android/gms/fitness/request/ReadRawRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ReadRawRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TA:Z

.field private final TB:Z

.field private final Ty:Lcom/google/android/gms/internal/zzud;

.field private final Tz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourceQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/util/List;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourceQueryParams;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzud$zza;->zzge(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Ty:Lcom/google/android/gms/internal/zzud;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Tz:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TA:Z

    iput-boolean p5, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TB:Z

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Ty:Lcom/google/android/gms/internal/zzud;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Ty:Lcom/google/android/gms/internal/zzud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzud;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->versionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "params"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Tz:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "server"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "flush"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzw;->zza(Lcom/google/android/gms/fitness/request/ReadRawRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbge()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TB:Z

    return v0
.end method

.method public zzbgf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->TA:Z

    return v0
.end method

.method public zzbgn()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourceQueryParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->Tz:Ljava/util/List;

    return-object v0
.end method
