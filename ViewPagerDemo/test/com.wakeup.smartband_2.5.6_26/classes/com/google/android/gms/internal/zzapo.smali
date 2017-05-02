.class public final Lcom/google/android/gms/internal/zzapo;
.super Lcom/google/android/gms/internal/zzapy;


# static fields
.field private static final bmu:Ljava/io/Reader;

.field private static final bmv:Ljava/lang/Object;


# instance fields
.field private final bmw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzapo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapo;->bmu:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaoh;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzapo;->bmu:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bo()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private bp()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzapz;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    if-eq v0, p1, :cond_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoe;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bom:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaok;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaok;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bn()Lcom/google/android/gms/internal/zzapz;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bot:Lcom/google/android/gms/internal/zzapz;

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzaok;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_30

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    goto :goto_a

    :cond_3e
    if-eqz v1, :cond_43

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_43
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_46
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaok;

    if-eqz v1, :cond_4d

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bom:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_4d
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoe;

    if-eqz v1, :cond_54

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_54
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaon;

    if-eqz v1, :cond_7b

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bc()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoj;

    if-eqz v1, :cond_82

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    goto :goto_a

    :cond_82
    sget-object v1, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    if-ne v0, v1, :cond_8f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bq()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzaon;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public nextBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->isLenient()Z

    move-result v2

    if-nez v2, :cond_86

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_6a
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_86
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return v0
.end method

.method public nextLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_4e

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->nextName()Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
