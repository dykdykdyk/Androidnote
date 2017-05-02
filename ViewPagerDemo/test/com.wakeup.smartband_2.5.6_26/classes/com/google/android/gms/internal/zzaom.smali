.class public final Lcom/google/android/gms/internal/zzaom;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/zzaoh;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;,
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzapy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzapy;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaom;->zzh(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoh;->aV()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->bot:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v2, :cond_35

    new-instance v0, Lcom/google/android/gms/internal/zzaoq;

    const-string/jumbo v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Lcom/google/android/gms/internal/zzaqb; {:try_start_0 .. :try_end_20} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_2e

    :catch_20
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_27
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    return-object v1
.end method

.method public zzh(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;,
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapi;->zzh(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_45
    .catchall {:try_start_8 .. :try_end_b} :catchall_40

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    return-object v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v2, Lcom/google/android/gms/internal/zzaol;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzaol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    throw v0

    :catch_45
    move-exception v0

    :try_start_46
    new-instance v2, Lcom/google/android/gms/internal/zzaol;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzaol;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_75
    .catchall {:try_start_46 .. :try_end_75} :catchall_40
.end method

.method public zzuq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoh;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaom;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    return-object v0
.end method
