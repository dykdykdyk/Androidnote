.class public Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private GX:J

.field private OX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private TT:Ljava/lang/String;

.field private TU:Z

.field private TV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Tc:Z

.field private bZ:J

.field private zzcpl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    iput-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->OX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->SS:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TU:Z

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Tc:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TV:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzcpl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->OX:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->SS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TU:Z

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Tc:Z

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TV:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SessionReadRequest;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_41

    move v0, v1

    :goto_b
    const-string/jumbo v3, "Invalid start time: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_43

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_43

    move v0, v1

    :goto_2a
    const-string/jumbo v3, "Invalid end time: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;Lcom/google/android/gms/fitness/request/SessionReadRequest$1;)V

    return-object v0

    :cond_41
    move v0, v2

    goto :goto_b

    :cond_43
    move v0, v2

    goto :goto_2a
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->Tc:Z

    return-object p0
.end method

.method public excludePackage(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 3

    const-string/jumbo v0, "Attempting to use a null package name"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 3

    const-string/jumbo v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 3

    const-string/jumbo v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->OX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0
.end method

.method public readSessionsFromAllApps()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TU:Z

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzcpl:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->TT:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .registers 9

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->bZ:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->GX:J

    return-object p0
.end method
