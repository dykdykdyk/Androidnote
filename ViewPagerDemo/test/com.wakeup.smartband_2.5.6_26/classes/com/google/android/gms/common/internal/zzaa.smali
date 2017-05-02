.class public Lcom/google/android/gms/common/internal/zzaa;
.super Ljava/lang/Object;


# static fields
.field private static CS:Ljava/lang/String;

.field private static CT:I

.field private static zzaok:Ljava/lang/Object;

.field private static zzcdp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaa;->zzaok:Ljava/lang/Object;

    return-void
.end method

.method public static zzcg(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzci(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/common/internal/zzaa;->CS:Ljava/lang/String;

    return-object v0
.end method

.method public static zzch(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzci(Landroid/content/Context;)V

    sget v0, Lcom/google/android/gms/common/internal/zzaa;->CT:I

    return v0
.end method

.method private static zzci(Landroid/content/Context;)V
    .registers 5

    sget-object v1, Lcom/google/android/gms/common/internal/zzaa;->zzaok:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/common/internal/zzaa;->zzcdp:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/common/internal/zzaa;->zzcdp:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    move-result-object v2

    const/16 v3, 0x80

    :try_start_16
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzsh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1c} :catch_37
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    if-nez v0, :cond_23

    :try_start_1e
    monitor-exit v1

    goto :goto_8

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    const-string/jumbo v2, "com.google.app.id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/internal/zzaa;->CS:Ljava/lang/String;

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/internal/zzaa;->CT:I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_35} :catch_37
    .catchall {:try_start_23 .. :try_end_35} :catchall_20

    :goto_35
    :try_start_35
    monitor-exit v1

    goto :goto_8

    :catch_37
    move-exception v0

    const-string/jumbo v2, "MetadataValueReader"

    const-string/jumbo v3, "This should never happen."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_20

    goto :goto_35
.end method
