.class final Lcom/google/android/gms/internal/zzapl$zza;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final bms:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final bmt:Lcom/google/android/gms/internal/zzapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapg",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Lcom/google/android/gms/internal/zzapg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaot",
            "<TE;>;",
            "Lcom/google/android/gms/internal/zzapg",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzapv;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzapv;-><init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapl$zza;->bms:Lcom/google/android/gms/internal/zzaot;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapl$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

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

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapl$zza;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/Collection;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqa;",
            "Ljava/util/Collection",
            "<TE;>;)V"
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bt()Lcom/google/android/gms/internal/zzaqa;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapl$zza;->bms:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bu()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_5
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapl$zza;->zzj(Lcom/google/android/gms/internal/zzapy;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzapy;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapy;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapl$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapg;->bg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    :goto_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapl$zza;->bms:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    goto :goto_c
.end method
