.class public Lcom/google/android/gms/fitness/request/SubscribeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private Ub:Lcom/google/android/gms/fitness/data/Subscription;

.field private final Uc:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Subscription;ZLandroid/os/IBinder;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Ub:Lcom/google/android/gms/fitness/data/Subscription;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Uc:Z

    invoke-static {p4}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Subscription;ZLcom/google/android/gms/internal/zzuh;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Ub:Lcom/google/android/gms/fitness/data/Subscription;

    iput-boolean p2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Uc:Z

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Ub:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzai;->zza(Lcom/google/android/gms/fitness/request/SubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgy()Lcom/google/android/gms/fitness/data/Subscription;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Ub:Lcom/google/android/gms/fitness/data/Subscription;

    return-object v0
.end method

.method public zzbgz()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->Uc:Z

    return v0
.end method
