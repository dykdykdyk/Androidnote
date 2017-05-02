.class public Lcom/google/android/gms/internal/zztc;
.super Ljava/lang/Object;


# static fields
.field private static RO:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    return-void
.end method

.method private static zzbfs()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static zzbft()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "glass_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static zzcx(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzi;->zzcl(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static zzcy(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/google/android/gms/internal/zztc;->RO:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/internal/zztc;->zzcx(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    :cond_e
    :goto_e
    sget v0, Lcom/google/android/gms/internal/zztc;->RO:I

    return v0

    :cond_11
    invoke-static {p0}, Lcom/google/android/gms/internal/zztc;->zzdb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/zztc;->zzbfs()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1d
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    goto :goto_e

    :cond_21
    invoke-static {p0}, Lcom/google/android/gms/internal/zztc;->zzcz(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    goto :goto_e

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/zztc;->zzbft()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    goto :goto_e

    :cond_35
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zztc;->RO:I

    goto :goto_e
.end method

.method private static zzcz(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzi;->zzb(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/google/android/gms/internal/zztc;->zzda(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static zzda(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    :try_start_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_d} :catch_14

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    :catch_14
    move-exception v0

    const-string/jumbo v2, "Fitness"

    const-string/jumbo v3, "Unable to determine type of device, assuming phone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_11
.end method

.method private static zzdb(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
