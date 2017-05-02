.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataDeleteRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final GX:J

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

.field private final SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final ST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final SU:Z

.field private final SV:Z

.field private final bZ:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZLandroid/os/IBinder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;ZZ",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    invoke-static {p11}, Lcom/google/android/gms/internal/zzuh$zza;->zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method public constructor <init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZLcom/google/android/gms/internal/zzuh;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;ZZ",
            "Lcom/google/android/gms/internal/zzuh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->mVersionCode:I

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    iput-object p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)V
    .registers 14

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z

    move-result v9

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)Z

    move-result v10

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZLcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;Lcom/google/android/gms/fitness/request/DataDeleteRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/zzuh;)V
    .registers 15

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    iget-object v6, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    iget-object v8, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    iget-boolean v9, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    move-object v1, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZLcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    if-ne v0, v1, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method


# virtual methods
.method public deleteAllData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    return v0
.end method

.method public deleteAllSessions()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Z

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

.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SP:Lcom/google/android/gms/internal/zzuh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SS:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dateTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->OX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sessions"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->ST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "deleteAllData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "deleteAllSessions"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzd;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzafn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->bZ:J

    return-wide v0
.end method

.method public zzbao()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->GX:J

    return-wide v0
.end method

.method public zzbga()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SU:Z

    return v0
.end method

.method public zzbgb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->SV:Z

    return v0
.end method
