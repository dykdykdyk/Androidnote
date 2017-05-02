.class public final Lcom/google/android/gms/internal/zzaoe;
.super Lcom/google/android/gms/internal/zzaoh;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaoh;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/zzaoh;",
        ">;"
    }
.end annotation


# instance fields
.field private final aLw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaoh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aQ()Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->aQ()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public aR()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaoe;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/zzaoe;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getAsBoolean()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->getAsBoolean()Z

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->getAsInt()I

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->getAsLong()J

    move-result-wide v0

    return-wide v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzaoh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public zzagv(I)Lcom/google/android/gms/internal/zzaoh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzaoh;)V
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoe;->aLw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
