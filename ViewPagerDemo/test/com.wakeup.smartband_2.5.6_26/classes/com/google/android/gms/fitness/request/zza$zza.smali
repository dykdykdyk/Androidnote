.class public Lcom/google/android/gms/fitness/request/zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static final SL:Lcom/google/android/gms/fitness/request/zza$zza;


# instance fields
.field private final SM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            "Lcom/google/android/gms/fitness/request/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zza$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zza$zza;->SL:Lcom/google/android/gms/fitness/request/zza$zza;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    return-void
.end method

.method public static zzbfx()Lcom/google/android/gms/fitness/request/zza$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/fitness/request/zza$zza;->SL:Lcom/google/android/gms/fitness/request/zza$zza;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/zza;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/android/gms/fitness/request/zza;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/fitness/request/zza;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/fitness/request/zza$1;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza$zza;->SM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/zza;

    if-eqz v0, :cond_f

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/google/android/gms/fitness/request/zza;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/fitness/request/zza;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/fitness/request/zza$1;)V

    monitor-exit v1

    goto :goto_e

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method
