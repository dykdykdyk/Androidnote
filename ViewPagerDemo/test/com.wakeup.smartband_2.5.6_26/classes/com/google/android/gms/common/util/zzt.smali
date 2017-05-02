.class public Lcom/google/android/gms/common/util/zzt;
.super Ljava/lang/Object;


# static fields
.field private static EY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->EY:Ljava/lang/String;

    return-void
.end method

.method public static zzaxx()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzt;->zzhl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaxy()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/zzt;->EY:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzt;->zzhl(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->EY:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/util/zzt;->EY:Ljava/lang/String;

    return-object v0
.end method

.method private static zzhl(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_42
    .catchall {:try_start_1 .. :try_end_28} :catchall_60

    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_77
    .catchall {:try_start_28 .. :try_end_2f} :catchall_75

    move-result-object v0

    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-object v0

    :catch_36
    move-exception v1

    const-string/jumbo v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catch_42
    move-exception v1

    move-object v2, v0

    :goto_44
    :try_start_44
    const-string/jumbo v3, "ProcessUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_75

    if-eqz v2, :cond_35

    :try_start_50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_35

    :catch_54
    move-exception v1

    const-string/jumbo v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catchall_60
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_63
    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    const-string/jumbo v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    :catchall_75
    move-exception v0

    goto :goto_63

    :catch_77
    move-exception v1

    goto :goto_44
.end method
