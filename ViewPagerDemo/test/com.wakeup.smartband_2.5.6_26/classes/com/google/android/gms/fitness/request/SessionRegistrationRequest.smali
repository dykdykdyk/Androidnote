.class public Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private final TX:I

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;Landroid/os/IBinder;I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p3, :cond_f

    const/4 v0, 0x0

    :goto_a
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    iput p4, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    return-void

    :cond_f
    invoke-static {p3}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzuh;I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    iput p3, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzb(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "pendingIntent"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionRegistrationOption"

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzac;->zza(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgw()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->TX:I

    return v0
.end method
