.class public final Lcom/google/android/gms/common/util/zzy;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzsh;->zzg(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zzf(Landroid/content/Context;I)Z
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_f
    const-string/jumbo v2, "com.google.android.gms"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_17} :catch_25

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/zzf;->zzb(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_a

    :catch_25
    move-exception v1

    const-string/jumbo v1, "UidVerifier"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "UidVerifier"

    const-string/jumbo v2, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
