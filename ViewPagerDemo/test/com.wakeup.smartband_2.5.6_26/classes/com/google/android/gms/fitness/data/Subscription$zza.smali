.class public Lcom/google/android/gms/fitness/data/Subscription$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private OM:Lcom/google/android/gms/fitness/data/DataType;

.field private ON:Lcom/google/android/gms/fitness/data/DataSource;

.field private RH:J

.field private RI:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->RH:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->RI:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/data/Subscription$zza;)Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/Subscription$zza;)Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/data/Subscription$zza;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->RH:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/data/Subscription$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->RI:I

    return v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public zzbfm()Lcom/google/android/gms/fitness/data/Subscription;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->OM:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_35

    :cond_a
    move v0, v2

    :goto_b
    const-string/jumbo v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->OM:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->OM:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    move v1, v2

    :cond_28
    const-string/jumbo v0, "Specified data type is incompatible with specified data source"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/Subscription$zza;Lcom/google/android/gms/fitness/data/Subscription$1;)V

    return-object v0

    :cond_35
    move v0, v1

    goto :goto_b
.end method

.method public zzd(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method
