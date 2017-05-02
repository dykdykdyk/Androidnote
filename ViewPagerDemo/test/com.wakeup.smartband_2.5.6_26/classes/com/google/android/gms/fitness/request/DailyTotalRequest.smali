.class public Lcom/google/android/gms/fitness/request/DailyTotalRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DailyTotalRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Pl:Lcom/google/android/gms/fitness/data/DataType;

.field private final SQ:Lcom/google/android/gms/internal/zzto;

.field private final SR:Z

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzto$zza;->zzfp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SQ:Lcom/google/android/gms/internal/zzto;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SR:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzto;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SQ:Lcom/google/android/gms/internal/zzto;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SR:Z

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SQ:Lcom/google/android/gms/internal/zzto;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzto;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->versionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, "DailyTotalRequest{%s}"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v0, :cond_15

    const-string/jumbo v0, "null"

    :goto_e
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzbeq()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzc;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbfz()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->SR:Z

    return v0
.end method
