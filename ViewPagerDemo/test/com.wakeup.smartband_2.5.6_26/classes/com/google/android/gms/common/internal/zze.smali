.class public abstract Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zze$zzg;,
        Lcom/google/android/gms/common/internal/zze$zza;,
        Lcom/google/android/gms/common/internal/zze$zzj;,
        Lcom/google/android/gms/common/internal/zze$zzk;,
        Lcom/google/android/gms/common/internal/zze$zzi;,
        Lcom/google/android/gms/common/internal/zze$zze;,
        Lcom/google/android/gms/common/internal/zze$zzd;,
        Lcom/google/android/gms/common/internal/zze$zzf;,
        Lcom/google/android/gms/common/internal/zze$zzc;,
        Lcom/google/android/gms/common/internal/zze$zzb;,
        Lcom/google/android/gms/common/internal/zze$zzh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Bs:[Ljava/lang/String;


# instance fields
.field private Ba:I

.field private Bb:J

.field private Bc:J

.field private Bd:I

.field private Be:J

.field private final Bf:Lcom/google/android/gms/common/internal/zzn;

.field private final Bg:Ljava/lang/Object;

.field private Bh:Lcom/google/android/gms/common/internal/zzv;

.field private Bi:Lcom/google/android/gms/common/internal/zze$zzf;

.field private Bj:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Bk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zze$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private Bl:Lcom/google/android/gms/common/internal/zze$zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zze$zzh;"
        }
    .end annotation
.end field

.field private Bm:I

.field private final Bn:Lcom/google/android/gms/common/internal/zze$zzb;

.field private final Bo:Lcom/google/android/gms/common/internal/zze$zzc;

.field private final Bp:I

.field private final Bq:Ljava/lang/String;

.field protected Br:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final xn:Lcom/google/android/gms/common/zzc;

.field private final zzajn:Landroid/os/Looper;

.field private final zzakd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/zze;->Bs:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzn;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzn;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzapd()Lcom/google/android/gms/common/zzc;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zze$zzb;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/zze$zzc;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzajn:Landroid/os/Looper;

    const-string/jumbo v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzn;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bf:Lcom/google/android/gms/common/internal/zzn;

    const-string/jumbo v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/zzc;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->xn:Lcom/google/android/gms/common/zzc;

    new-instance v0, Lcom/google/android/gms/common/internal/zze$zzd;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zze$zzd;-><init>(Lcom/google/android/gms/common/internal/zze;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/zze;->Bp:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zze;->Bn:Lcom/google/android/gms/common/internal/zze$zzb;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zze;->Bo:Lcom/google/android/gms/common/internal/zze$zzc;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zze;->Bq:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zze;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zze;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zze;->zzb(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zze;IILandroid/os/IInterface;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zze;->zza(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method private zzats()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    if-eqz v0, :cond_64

    const-string/jumbo v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatq()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_64
    new-instance v0, Lcom/google/android/gms/common/internal/zze$zzh;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zze$zzh;-><init>(Lcom/google/android/gms/common/internal/zze;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatq()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_db

    const-string/jumbo v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "unable to connect to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/internal/zze;->zza(ILandroid/os/Bundle;I)V

    :cond_db
    return-void
.end method

.method private zzatt()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatq()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bl:Lcom/google/android/gms/common/internal/zze$zzh;

    :cond_1a
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bi:Lcom/google/android/gms/common/internal/zze$zzf;

    return-object v0
.end method

.method private zzb(ILandroid/os/IInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1d

    move v3, v0

    :goto_6
    if-eqz p2, :cond_1f

    move v2, v0

    :goto_9
    if-ne v3, v2, :cond_21

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbs(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iput p1, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zze;->Bj:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/zze;->zzc(ILandroid/os/IInterface;)V

    packed-switch p1, :pswitch_data_32

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    move v3, v1

    goto :goto_6

    :cond_1f
    move v2, v1

    goto :goto_9

    :cond_21
    move v0, v1

    goto :goto_b

    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;->zzats()V

    goto :goto_1b

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    throw v0

    :pswitch_2a
    :try_start_2a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/zze;->zza(Landroid/os/IInterface;)V

    goto :goto_1b

    :pswitch_2e
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;->zzatt()V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    goto :goto_1b

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_23
        :pswitch_2a
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bn:Lcom/google/android/gms/common/internal/zze$zzb;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zze;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bo:Lcom/google/android/gms/common/internal/zze$zzc;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zze$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zze$zze;->zzaud()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->Bg:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/zze;->zzb(ILandroid/os/IInterface;)V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->Bj:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_182

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1d
    const-string/jumbo v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_152

    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2b
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Bc:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_7c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastConnectedTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Bc:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zze;->Bc:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7c
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Bb:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_d7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/gms/common/internal/zze;->Ba:I

    packed-switch v1, :pswitch_data_18e

    iget v1, p0, Lcom/google/android/gms/common/internal/zze;->Ba:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_9a
    const-string/jumbo v1, " lastSuspendedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Bb:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zze;->Bb:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d7
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Be:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_12e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastFailedStatus="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/internal/zze;->Bd:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v1, " lastFailedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zze;->Be:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zze;->Be:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12e
    return-void

    :catchall_12f
    move-exception v0

    :try_start_130
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v0

    :pswitch_132
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_13a
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_142
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_14a
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_152
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zziy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2b

    :pswitch_172
    const-string/jumbo v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_9a

    :pswitch_17a
    const-string/jumbo v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_9a

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_132
        :pswitch_13a
        :pswitch_142
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_172
        :pswitch_17a
    .end packed-switch
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzajn:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/zze;->Bd:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->Be:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/internal/zze;->Ba:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->Bb:J

    return-void
.end method

.method protected zza(ILandroid/os/Bundle;I)V
    .registers 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zze$zzk;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/common/internal/zze$zzk;-><init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 10
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zze$zzj;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zze$zzj;-><init>(Lcom/google/android/gms/common/internal/zze;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(Landroid/os/IInterface;)V
    .registers 4
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->Bc:J

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zze$zzf;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/internal/zze$zzf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zze$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bi:Lcom/google/android/gms/common/internal/zze$zzf;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/zze;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zze$zzf;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 9

    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zze$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bi:Lcom/google/android/gms/common/internal/zze$zzf;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzr;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzagl()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/zze;->Bp:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzht(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v0

    if-eqz p2, :cond_1e

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzahd()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatv()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb(Lcom/google/android/gms/common/internal/zzr;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->Bg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_32
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_32} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_72

    :try_start_32
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    new-instance v3, Lcom/google/android/gms/common/internal/zze$zzg;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/zze$zzg;-><init>(Lcom/google/android/gms/common/internal/zze;I)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzv;->zza(Lcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_6f

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzaty()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_55
    .catch Landroid/os/DeadObjectException; {:try_start_48 .. :try_end_55} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_55} :catch_72

    goto :goto_2f

    :catch_56
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zze;->zzgl(I)V

    goto :goto_47

    :cond_65
    :try_start_65
    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0
    :try_end_72
    .catch Landroid/os/DeadObjectException; {:try_start_71 .. :try_end_72} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_72} :catch_72

    :catch_72
    move-exception v0

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method protected zzagl()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public zzahd()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzahs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzaht()Landroid/content/Intent;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzaoe()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzapr()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzaps()Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->Bg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bh:Lcom/google/android/gms/common/internal/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected zzatq()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms"

    return-object v0
.end method

.method protected final zzatr()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bq:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bq:Ljava/lang/String;

    goto :goto_e
.end method

.method public zzatu()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->xn:Lcom/google/android/gms/common/zzc;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zze;->zzb(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/zze$zzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zze$zzi;-><init>(Lcom/google/android/gms/common/internal/zze;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zze;->Bi:Lcom/google/android/gms/common/internal/zze$zzf;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_28
    return-void

    :cond_29
    new-instance v0, Lcom/google/android/gms/common/internal/zze$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zze$zzi;-><init>(Lcom/google/android/gms/common/internal/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze$zzf;)V

    goto :goto_28
.end method

.method public final zzatv()Landroid/accounts/Account;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected final zzatw()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public final zzatx()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzakd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->Bm:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zze;->zzatw()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bj:Landroid/os/IInterface;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_19
    const-string/jumbo v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->Bj:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_e

    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public zzaty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zzatz()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method zzc(ILandroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public zzgl(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zze;->Br:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract zzix()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract zziy()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
