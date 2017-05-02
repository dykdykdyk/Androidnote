.class public final Lcom/google/android/gms/common/util/zzi;
.super Ljava/lang/Object;


# static fields
.field private static EL:Ljava/lang/Boolean;

.field private static EM:Ljava/lang/Boolean;

.field private static EN:Ljava/lang/Boolean;

.field private static EO:Ljava/lang/Boolean;


# direct methods
.method public static zzb(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v2

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EL:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_31

    move v0, v1

    :goto_15
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxk()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v0, :cond_23

    :cond_1d
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzi;->zzc(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    move v2, v1

    :cond_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->EL:Ljava/lang/Boolean;

    :cond_2a
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_31
    move v0, v2

    goto :goto_15
.end method

.method private static zzc(Landroid/content/res/Resources;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EM:Ljava/lang/Boolean;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxm()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-gt v1, v2, :cond_29

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_29

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->EM:Ljava/lang/Boolean;

    :cond_22
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static zzcl(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EN:Ljava/lang/Boolean;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxs()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->EN:Ljava/lang/Boolean;

    :cond_1e
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static zzcm(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EO:Ljava/lang/Boolean;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxu()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "cn.google"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->EO:Ljava/lang/Boolean;

    :cond_1e
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->EO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_18
.end method
