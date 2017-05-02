.class public final Lcom/google/android/gms/internal/zzaps$zza;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzaot",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bmM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaps$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final bmt:Lcom/google/android/gms/internal/zzapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzapg;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaps$zzb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaps$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaps$zza;->bmM:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzapg;Ljava/util/Map;Lcom/google/android/gms/internal/zzaps$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaps$zza;-><init>(Lcom/google/android/gms/internal/zzapg;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqa;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bv()Lcom/google/android/gms/internal/zzaqa;

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$zza;->bmM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaps$zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaps$zzb;->zzct(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaps$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaqa;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaps$zzb;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bw()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_5
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapg;->bg()Ljava/lang/Object;

    move-result-object v1

    :try_start_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginObject()V

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaps$zza;->bmM:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaps$zzb;

    if-eqz v0, :cond_2e

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzaps$zzb;->bmO:Z

    if-nez v2, :cond_39

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->skipValue()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    :catch_32
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
    :try_start_39
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaps$zzb;->zza(Lcom/google/android/gms/internal/zzapy;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endObject()V

    move-object v0, v1

    goto :goto_c
.end method
