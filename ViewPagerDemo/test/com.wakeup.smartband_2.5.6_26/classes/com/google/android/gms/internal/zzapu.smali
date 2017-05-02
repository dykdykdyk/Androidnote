.class public final Lcom/google/android/gms/internal/zzapu;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final bmp:Lcom/google/android/gms/internal/zzaou;


# instance fields
.field private final bmP:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzapu$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapu$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapu;->bmp:Lcom/google/android/gms/internal/zzaou;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapu;->bmP:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapu;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/sql/Time;)V

    return-void
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/internal/zzaqa;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapu;->bmP:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapu;->zzn(Lcom/google/android/gms/internal/zzapy;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized zzn(Lcom/google/android/gms/internal/zzapy;)Ljava/sql/Time;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2a

    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapu;->bmP:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_23
    .catchall {:try_start_f .. :try_end_22} :catchall_2a

    goto :goto_d

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
