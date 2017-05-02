.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Tj:Z

.field private Tl:[Lcom/google/android/gms/fitness/data/DataType;

.field private Tm:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tl:[Lcom/google/android/gms/fitness/data/DataType;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tm:[I

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tj:Z

    return-void

    nop

    :array_14
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)[Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tl:[Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tm:[I

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataSourcesRequest;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tl:[Lcom/google/android/gms/fitness/data/DataType;

    array-length v0, v0

    if-lez v0, :cond_20

    move v0, v1

    :goto_8
    const-string/jumbo v3, "Must add at least one data type"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tm:[I

    array-length v0, v0

    if-lez v0, :cond_22

    :goto_13
    const-string/jumbo v0, "Must add at least one data source type"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;Lcom/google/android/gms/fitness/request/DataSourcesRequest$1;)V

    return-object v0

    :cond_20
    move v0, v2

    goto :goto_8

    :cond_22
    move v1, v2

    goto :goto_13
.end method

.method public varargs setDataSourceTypes([I)Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tm:[I

    return-object p0
.end method

.method public varargs setDataTypes([Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->Tl:[Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method
