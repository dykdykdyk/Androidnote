.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OM:Lcom/google/android/gms/fitness/data/DataType;

.field private final Tu:Lcom/google/android/gms/internal/zzuc;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->OM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzuc$zza;->zzgd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->Tu:Lcom/google/android/gms/internal/zzuc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzuc;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->OM:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->Tu:Lcom/google/android/gms/internal/zzuc;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->Tu:Lcom/google/android/gms/internal/zzuc;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->Tu:Lcom/google/android/gms/internal/zzuc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzu;->zza(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
