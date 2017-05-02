.class public Lcom/google/android/gms/internal/zzsy;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, -0x1

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method
