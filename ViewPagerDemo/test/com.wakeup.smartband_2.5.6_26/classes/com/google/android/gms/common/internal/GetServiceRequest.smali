.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Ci:I

.field Cj:I

.field Ck:Ljava/lang/String;

.field Cl:Landroid/os/IBinder;

.field Cm:[Lcom/google/android/gms/common/api/Scope;

.field Cn:Landroid/os/Bundle;

.field Co:Landroid/accounts/Account;

.field Cp:J

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    sget v0, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cj:I

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ci:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;J)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ci:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cj:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ck:Ljava/lang/String;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1b

    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdq(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Co:Landroid/accounts/Account;

    :goto_14
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cm:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cn:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cp:J

    return-void

    :cond_1b
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cl:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Co:Landroid/accounts/Account;

    goto :goto_14
.end method

.method private zzdq(Landroid/os/IBinder;)Landroid/accounts/Account;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzr$zza;->zzdr(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zza;->zza(Lcom/google/android/gms/common/internal/zzr;)Landroid/accounts/Account;

    move-result-object v0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/internal/zzr;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cl:Landroid/os/IBinder;

    :cond_8
    return-object p0
.end method

.method public zzd(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Co:Landroid/accounts/Account;

    return-object p0
.end method

.method public zzf(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cm:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public zzht(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Ck:Ljava/lang/String;

    return-object p0
.end method

.method public zzo(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->Cn:Landroid/os/Bundle;

    return-object p0
.end method
