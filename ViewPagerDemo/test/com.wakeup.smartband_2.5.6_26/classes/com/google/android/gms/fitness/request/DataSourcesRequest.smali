.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourcesRequest;",
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

.field private final Ti:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Tj:Z

.field private final Tk:Lcom/google/android/gms/internal/zztq;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;ZLandroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->OX:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Ti:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tj:Z

    invoke-static {p5}, Lcom/google/android/gms/internal/zztq$zza;->zzfr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tk:Lcom/google/android/gms/internal/zztq;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)[Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzb;->zzb([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzb;->zza([I)[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zztq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;Lcom/google/android/gms/fitness/request/DataSourcesRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zztq;)V
    .registers 6

    iget-object v0, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->OX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Ti:Ljava/util/List;

    iget-boolean v2, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tj:Z

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zztq;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zztq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/google/android/gms/internal/zztq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->OX:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Ti:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tj:Z

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tk:Lcom/google/android/gms/internal/zztq;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tk:Lcom/google/android/gms/internal/zztq;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tk:Lcom/google/android/gms/internal/zztq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zztq;->asBinder()Landroid/os/IBinder;

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->OX:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->OX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sourceTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Ti:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tj:Z

    if-eqz v1, :cond_23

    const-string/jumbo v1, "includeDbOnlySources"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzh;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgj()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Ti:Ljava/util/List;

    return-object v0
.end method

.method public zzbgk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->Tj:Z

    return v0
.end method
