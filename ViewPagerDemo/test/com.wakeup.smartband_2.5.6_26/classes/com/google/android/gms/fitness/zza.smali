.class public final Lcom/google/android/gms/fitness/zza;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/Scope;
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance p0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v0, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-object p0

    :cond_17
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance p0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v0, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_2e
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance p0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v0, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_45
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.nutrition.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v0, "https://www.googleapis.com/auth/fitness.nutrition.write"

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static zzj(Ljava/util/Collection;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0}, Lcom/google/android/gms/fitness/zza;->zza(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/Scope;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_29
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2d
    return-object v1
.end method
