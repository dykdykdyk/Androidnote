.class public final Lcom/google/android/gms/fitness/data/DataSource$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Pl:Lcom/google/android/gms/fitness/data/DataType;

.field private Pq:Lcom/google/android/gms/fitness/data/Device;

.field private Pr:Lcom/google/android/gms/fitness/data/Application;

.field private Ps:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Ps:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/DataSource$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Device;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pq:Lcom/google/android/gms/fitness/data/Device;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Application;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pr:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Ps:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/data/DataSource$Builder;)[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/DataSource;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Must set data type"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    if-ltz v0, :cond_20

    :goto_11
    const-string/jumbo v0, "Must set data source type"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;Lcom/google/android/gms/fitness/data/DataSource$1;)V

    return-object v0

    :cond_1e
    move v0, v2

    goto :goto_7

    :cond_20
    move v1, v2

    goto :goto_11
.end method

.method public setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Application;->zzjf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pr:Lcom/google/android/gms/fitness/data/Application;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setDevice(Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Pq:Lcom/google/android/gms/fitness/data/Device;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 4

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "Must specify a valid stream name"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->Ps:Ljava/lang/String;

    return-object p0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    return-object p0
.end method
