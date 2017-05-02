.class public Lcom/google/android/gms/common/util/zzz;
.super Ljava/lang/Object;


# static fields
.field private static final Fa:Ljava/lang/reflect/Method;

.field private static final Fb:Ljava/lang/reflect/Method;

.field private static final Fc:Ljava/lang/reflect/Method;

.field private static final Fd:Ljava/lang/reflect/Method;

.field private static final Fe:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzz;->zzaya()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzz;->Fa:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzz;->zzayb()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzz;->Fb:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzz;->zzayc()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzz;->Fc:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzz;->zzayd()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzz;->Fd:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/zzz;->zzaye()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzz;->Fe:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/os/WorkSource;)I
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_5
    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fc:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Unable to assign blame through WorkSource"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    move v0, v1

    goto :goto_14
.end method

.method public static zza(Landroid/os/WorkSource;I)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fe:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    :try_start_4
    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fe:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fb:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    if-nez p2, :cond_9

    const-string/jumbo p2, ""

    :cond_9
    :try_start_9
    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fb:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :cond_27
    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fa:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_2b
    sget-object v0, Lcom/google/android/gms/common/util/zzz;->Fa:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b

    goto :goto_1b

    :catch_3b
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private static zzaya()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private static zzayb()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxq()Z

    move-result v1

    if-eqz v1, :cond_1d

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1e

    move-result-object v0

    :cond_1d
    :goto_1d
    return-object v0

    :catch_1e
    move-exception v1

    goto :goto_1d
.end method

.method private static zzayc()Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private static zzayd()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private static zzaye()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxq()Z

    move-result v1

    if-eqz v1, :cond_18

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19

    move-result-object v0

    :cond_18
    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method public static zzb(Landroid/os/WorkSource;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_9

    move v2, v1

    :goto_4
    if-nez v2, :cond_f

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzz;->zza(Landroid/os/WorkSource;)I

    move-result v0

    move v2, v0

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    if-ge v1, v2, :cond_8

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzz;->zza(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/zzw;->zzij(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public static zzcp(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v1

    const-string/jumbo v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzsh;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static zzf(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 3

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/zzz;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    return-object v0
.end method

.method public static zzy(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzsh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_13} :catch_2f

    move-result-object v0

    if-nez v0, :cond_55

    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Could not get applicationInfo from package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_a

    :catch_2f
    move-exception v0

    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Could not find package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_a

    :cond_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :cond_4f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :cond_55
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzz;->zzf(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    goto :goto_a
.end method
