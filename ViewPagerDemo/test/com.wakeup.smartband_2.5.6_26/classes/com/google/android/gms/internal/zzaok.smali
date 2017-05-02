.class public final Lcom/google/android/gms/internal/zzaok;
.super Lcom/google/android/gms/internal/zzaoh;


# instance fields
.field private final ble:Lcom/google/android/gms/internal/zzapf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzapf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method

.method private zzcm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaoh;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoh;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapf;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaok;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/zzaok;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapf;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoh;)V
    .registers 4

    if-nez p2, :cond_4

    sget-object p2, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzapf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaok;->zzcm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoh;)V

    return-void
.end method

.method public zzcb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaok;->zzcm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoh;)V

    return-void
.end method

.method public zzuo(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    return-object v0
.end method

.method public zzup(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaoe;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->ble:Lcom/google/android/gms/internal/zzapf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoe;

    return-object v0
.end method
