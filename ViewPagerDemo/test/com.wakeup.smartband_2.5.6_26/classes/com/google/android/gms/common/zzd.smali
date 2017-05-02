.class Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/zzd$zzd;,
        Lcom/google/android/gms/common/zzd$zzc;,
        Lcom/google/android/gms/common/zzd$zzb;,
        Lcom/google/android/gms/common/zzd$zza;
    }
.end annotation


# static fields
.field private static uO:Lcom/google/android/gms/common/internal/zzw;

.field private static uP:Landroid/content/Context;

.field private static uQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private static uR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/internal/zzt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static zza([Landroid/os/IBinder;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/internal/zzt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    array-length v1, p0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_21

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzt$zza;->zzdt(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzt;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string/jumbo v3, "GoogleCertificates"

    const-string/jumbo v4, "iCertData is null, skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_21
    return-object v2
.end method

.method private static zzape()Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/common/zzd;->uP:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;

    if-nez v0, :cond_2a

    :try_start_9
    sget-object v0, Lcom/google/android/gms/common/zzd;->uP:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/zzsu;->OC:Lcom/google/android/gms/internal/zzsu$zzb;

    const-string/jumbo v2, "com.google.android.gms.googlecertificates"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzsu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsu$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsu;

    move-result-object v0

    const-string/jumbo v1, "GoogleCertificates"

    const-string/jumbo v2, "com.google.android.gms.googlecertificates module is loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsu;->zzjd(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->zzdw(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;
    :try_end_2a
    .catch Lcom/google/android/gms/internal/zzsu$zza; {:try_start_9 .. :try_end_2a} :catch_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :catch_2c
    move-exception v0

    const-string/jumbo v1, "GoogleCertificates"

    const-string/jumbo v2, "Failed to load com.google.android.gms.googlecertificates: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsu$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2b

    :cond_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49
.end method

.method static declared-synchronized zzapf()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/internal/zzt;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_60

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzape()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_60

    goto :goto_9

    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzw;->zzauz()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "Failed to get google certificates from remote"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_9

    :cond_2c
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/zzd;->zza([Landroid/os/IBinder;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;

    const/4 v0, 0x0

    :goto_39
    sget-object v2, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    sget-object v2, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;

    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4a
    sget-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_52} :catch_55
    .catchall {:try_start_18 .. :try_end_52} :catchall_60

    :goto_52
    :try_start_52
    sget-object v0, Lcom/google/android/gms/common/zzd;->uQ:Ljava/util/Set;

    goto :goto_9

    :catch_55
    move-exception v0

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "Failed to retrieve google certificates"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_60

    goto :goto_52

    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized zzapg()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/internal/zzt;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_58

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzape()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_58

    goto :goto_9

    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/android/gms/common/zzd;->uO:Lcom/google/android/gms/common/internal/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzw;->zzava()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "Failed to get google release certificates from remote"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_9

    :cond_2c
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/zzd;->zza([Landroid/os/IBinder;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;

    sget-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4a} :catch_4d
    .catchall {:try_start_18 .. :try_end_4a} :catchall_58

    :goto_4a
    :try_start_4a
    sget-object v0, Lcom/google/android/gms/common/zzd;->uR:Ljava/util/Set;

    goto :goto_9

    :catch_4d
    move-exception v0

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "Failed to retrieve google release certificates"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_58

    goto :goto_4a

    :catchall_58
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized zzbr(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/zzd;->uP:Landroid/content/Context;

    if-nez v0, :cond_11

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->uP:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
