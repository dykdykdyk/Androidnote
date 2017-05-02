.class public final Lcom/google/android/gms/fitness/data/Application;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Application;",
            ">;"
        }
    .end annotation
.end field

.field public static final OT:Lcom/google/android/gms/fitness/data/Application;


# instance fields
.field private final OU:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Application;->OT:Lcom/google/android/gms/fitness/data/Application;

    new-instance v0, Lcom/google/android/gms/fitness/data/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Application;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Application;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/google/android/gms/fitness/data/Application;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Application;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;
    .registers 4

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/fitness/data/Application;->OT:Lcom/google/android/gms/fitness/data/Application;

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static zzjf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/gms/fitness/data/Application;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Application;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Application;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Application;->zza(Lcom/google/android/gms/fitness/data/Application;)Z

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

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Application;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "Application{%s:%s:%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Application;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Application;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzb;->zza(Lcom/google/android/gms/fitness/data/Application;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbea()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Application;->OU:Ljava/lang/String;

    return-object v0
.end method
