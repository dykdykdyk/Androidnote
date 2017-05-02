.class public Lcom/google/android/gms/internal/zzqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqg;
.implements Lcom/google/android/gms/internal/zzqy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqr$zza;,
        Lcom/google/android/gms/internal/zzqr$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final vQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;"
        }
    .end annotation
.end field

.field final wV:Lcom/google/android/gms/internal/zzqp;

.field final xB:Lcom/google/android/gms/common/internal/zzh;

.field final xC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final xW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field private final xf:Ljava/util/concurrent/locks/Lock;

.field private final xn:Lcom/google/android/gms/common/zzc;

.field private final yj:Ljava/util/concurrent/locks/Condition;

.field private final yk:Lcom/google/android/gms/internal/zzqr$zzb;

.field final yl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ym:Lcom/google/android/gms/internal/zzqq;

.field private yn:Lcom/google/android/gms/common/ConnectionResult;

.field yo:I

.field final yp:Lcom/google/android/gms/internal/zzqy$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqy$zza;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzh;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqf;",
            ">;",
            "Lcom/google/android/gms/internal/zzqy$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqr;->xn:Lcom/google/android/gms/common/zzc;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqr;->xB:Lcom/google/android/gms/common/internal/zzh;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzqr;->xC:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzqr;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzqr;->yp:Lcom/google/android/gms/internal/zzqy$zza;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqg;)V

    goto :goto_23

    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/zzqr$zzb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzqr$zzb;-><init>(Lcom/google/android/gms/internal/zzqr;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yk:Lcom/google/android/gms/internal/zzqr$zzb;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/zzqo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqo;-><init>(Lcom/google/android/gms/internal/zzqr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqr;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqr;)Lcom/google/android/gms/internal/zzqq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    return-object v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->connect()V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_37

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->disconnect()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_8

    :catch_27
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqq;->connect()V

    return-void
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqq;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zze;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_25

    :cond_53
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1c

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzqm;

    return v0
.end method

.method public isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzqn;

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqq;->onConnected(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqq;->onConnectionSuspended(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzqr$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yk:Lcom/google/android/gms/internal/zzqr$zzb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqr$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->yk:Lcom/google/android/gms/internal/zzqr$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqr$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yk:Lcom/google/android/gms/internal/zzqr$zzb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqr$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->yk:Lcom/google/android/gms/internal/zzqr$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqr$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzrl;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzaqb()V
    .registers 1

    return-void
.end method

.method public zzaqy()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqr;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqm;->zzarh()V

    :cond_d
    return-void
.end method

.method zzarw()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/zzqn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqr;->xB:Lcom/google/android/gms/common/internal/zzh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqr;->xC:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqr;->xn:Lcom/google/android/gms/common/zzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqr;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqr;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqn;-><init>(Lcom/google/android/gms/internal/zzqr;Lcom/google/android/gms/common/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqq;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzarx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->zzart()Z

    new-instance v0, Lcom/google/android/gms/internal/zzqm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqm;-><init>(Lcom/google/android/gms/internal/zzqr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqq;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzary()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqq;->zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzqc$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqc$zza;->zzaqt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqq;->zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;

    move-result-object v0

    return-object v0
.end method

.method zzi(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->yn:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzqo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqo;-><init>(Lcom/google/android/gms/internal/zzqr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->ym:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqq;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yj:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->xf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
