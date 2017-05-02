.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/StartBleScanRequest;",
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

.field private final SP:Lcom/google/android/gms/internal/zzuh;

.field private final TZ:Lcom/google/android/gms/fitness/request/zzs;

.field private final Ua:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Landroid/os/IBinder;ILandroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->OX:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/gms/fitness/request/zzs$zza;->zzgl(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    iput p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Ua:I

    invoke-static {p5}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)[Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzb;->zzb([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)Lcom/google/android/gms/fitness/request/zzs;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzs;ILcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;Lcom/google/android/gms/fitness/request/StartBleScanRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/internal/zzuh;)V
    .registers 6

    iget-object v0, p1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->OX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    iget v2, p1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Ua:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzs;ILcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzs;ILcom/google/android/gms/internal/zzuh;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Lcom/google/android/gms/fitness/request/zzs;",
            "I",
            "Lcom/google/android/gms/internal/zzuh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->OX:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Ua:I

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->OX:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutSecs()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Ua:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->OX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "timeoutSecs"

    iget v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Ua:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzag;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgx()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->TZ:Lcom/google/android/gms/fitness/request/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
