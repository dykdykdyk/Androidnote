.class public Lcom/google/android/gms/fitness/request/SessionReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/SessionReadRequest;",
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

.field private final TT:Ljava/lang/String;

.field private TU:Z

.field private final TV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TW:Lcom/google/android/gms/internal/zzuf;

.field private final Tc:Z

.field private final bZ:J

.field private final mVersionCode:I

.field private final zzcpl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    iput-boolean p11, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

    iput-object p12, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    invoke-static {p13}, Lcom/google/android/gms/internal/zzuf$zza;->zzgg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TW:Lcom/google/android/gms/internal/zzuf;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzd(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J

    move-result-wide v6

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zze(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzf(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;

    move-result-object v9

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzg(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z

    move-result v10

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzh(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z

    move-result v11

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzi(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Lcom/google/android/gms/internal/zzuf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;Lcom/google/android/gms/fitness/request/SessionReadRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/internal/zzuf;)V
    .registers 17

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    iget-wide v6, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    iget-object v8, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    iget-object v9, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    iget-boolean v11, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

    iget-object v12, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    move-object v1, p0

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Lcom/google/android/gms/internal/zzuf;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Lcom/google/android/gms/internal/zzuf;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzuf;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x5

    if-nez p12, :cond_1b

    const/4 v13, 0x0

    :goto_4
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(ILjava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;)V

    return-void

    :cond_1b
    invoke-interface/range {p12 .. p12}, Lcom/google/android/gms/internal/zzuf;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    goto :goto_4
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_50

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

    if-ne v0, v1, :cond_50

    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TW:Lcom/google/android/gms/internal/zzuf;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TW:Lcom/google/android/gms/internal/zzuf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuf;->asBinder()Landroid/os/IBinder;

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExcludedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public includeSessionsFromAllApps()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionName"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionId"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzcpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->OX:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->SS:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionsFromAllApps"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "excludedPackages"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TV:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "useServer"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzab;->zza(Lcom/google/android/gms/fitness/request/SessionReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzafn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->bZ:J

    return-wide v0
.end method

.method public zzbao()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->GX:J

    return-wide v0
.end method

.method public zzbge()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->Tc:Z

    return v0
.end method

.method public zzbgv()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->TU:Z

    return v0
.end method
