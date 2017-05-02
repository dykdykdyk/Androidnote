.class public Lcom/google/android/gms/common/internal/ResolveAccountResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ResolveAccountResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field AW:Landroid/os/IBinder;

.field private CX:Z

.field final mVersionCode:I

.field private vm:Lcom/google/android/gms/common/ConnectionResult;

.field private xz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->AW:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->vm:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->xz:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CX:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->vm:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->vm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzavd()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzavd()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzae;->zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzavd()Lcom/google/android/gms/common/internal/zzr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->AW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzr$zza;->zzdr(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public zzave()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->vm:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzavf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->xz:Z

    return v0
.end method

.method public zzavg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CX:Z

    return v0
.end method
