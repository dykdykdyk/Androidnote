.class final Lcom/google/android/gms/internal/zzanw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaog;
.implements Lcom/google/android/gms/internal/zzaop;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaog",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/google/android/gms/internal/zzaop",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final bkA:Ljava/text/DateFormat;

.field private final bkB:Ljava/text/DateFormat;

.field private final bkz:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw;->bkz:Ljava/text/DateFormat;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanw;->bkA:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkB:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkB:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaoh;)Ljava/util/Date;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw;->bkA:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkA:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_c} :catch_f
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    move-result-object v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1c

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkz:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_19} :catch_1f
    .catchall {:try_start_10 .. :try_end_19} :catchall_1c

    move-result-object v0

    :try_start_1a
    monitor-exit v1

    goto :goto_e

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkB:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_29} :catch_2c
    .catchall {:try_start_20 .. :try_end_29} :catchall_1c

    move-result-object v0

    :try_start_2a
    monitor-exit v1

    goto :goto_e

    :catch_2c
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aR()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_1c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanw;->bkA:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzaoh;
    .registers 5

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzanw;->zza(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzaoh;
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw;->bkA:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bkz:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaof;)Ljava/util/Date;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaol;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaon;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/zzaol;

    const-string/jumbo v1, "The date should be a string value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaol;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzaoh;)Ljava/util/Date;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne p2, v1, :cond_16

    :goto_15
    return-object v0

    :cond_16
    const-class v1, Ljava/sql/Timestamp;

    if-ne p2, v1, :cond_25

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_15

    :cond_25
    const-class v1, Ljava/sql/Date;

    if-ne p2, v1, :cond_34

    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_15

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " cannot deserialize to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaof;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaol;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaof;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
