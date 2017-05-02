.class public Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/HistoryApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewIntentBuilder"
.end annotation


# instance fields
.field private GX:J

.field private final OM:Lcom/google/android/gms/fitness/data/DataType;

.field private ON:Lcom/google/android/gms/fitness/data/DataSource;

.field private OO:Ljava/lang/String;

.field private bZ:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/data/DataType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private zzk(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OO:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OO:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v0

    goto :goto_4
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->bZ:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_51

    move v0, v1

    :goto_b
    const-string/jumbo v3, "Start time must be set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->GX:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_53

    :goto_19
    const-string/jumbo v0, "End time must be set and after start time"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "vnd.google.fitness.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/DataType;->getMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.google.fitness.start_time"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->bZ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.google.fitness.end_time"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->GX:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    const-string/jumbo v2, "vnd.google.fitness.data_source"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzk(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_51
    move v0, v2

    goto :goto_b

    :cond_53
    move v1, v2

    goto :goto_19
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "Data source %s is not for the data type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->OO:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .registers 9

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->bZ:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->GX:J

    return-object p0
.end method
