.class public Lcom/google/android/gms/fitness/result/FileUriResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/FileUriResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final es:Lcom/google/android/gms/common/api/Status;

.field private final uri:Landroid/net/Uri;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/FileUriResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/result/FileUriResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p1, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/result/FileUriResult;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/result/FileUriResult;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/result/FileUriResult;->zzb(Lcom/google/android/gms/fitness/result/FileUriResult;)Z

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

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->es:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/FileUriResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzh;->zza(Lcom/google/android/gms/fitness/result/FileUriResult;Landroid/os/Parcel;I)V

    return-void
.end method
