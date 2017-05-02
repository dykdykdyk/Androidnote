.class public Lcom/google/android/gms/fitness/result/ReadRawResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/ReadRawResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Up:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I

.field private final xi:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/ReadRawResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->xi:Lcom/google/android/gms/common/data/DataHolder;

    if-nez p3, :cond_d

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :cond_d
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->Up:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->xi:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->Up:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->xi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzk;->zza(Lcom/google/android/gms/fitness/result/ReadRawResult;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbbw()Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->xi:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzbhg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ReadRawResult;->Up:Ljava/util/List;

    return-object v0
.end method
