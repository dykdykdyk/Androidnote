.class public final Lcom/google/android/gms/internal/zzapp;
.super Lcom/google/android/gms/internal/zzaqa;


# static fields
.field private static final bmx:Ljava/io/Writer;

.field private static final bmy:Lcom/google/android/gms/internal/zzaon;


# instance fields
.field private bmA:Lcom/google/android/gms/internal/zzaoh;

.field private final bmw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaoh;",
            ">;"
        }
    .end annotation
.end field

.field private bmz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzapp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapp;->bmx:Ljava/io/Writer;

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzapp;->bmy:Lcom/google/android/gms/internal/zzaon;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzapp;->bmx:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmA:Lcom/google/android/gms/internal/zzaoh;

    return-void
.end method

.method private bs()Lcom/google/android/gms/internal/zzaoh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzaoh;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aV()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->bK()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;->bs()Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaok;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoh;)V

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapp;->bmA:Lcom/google/android/gms/internal/zzaoh;

    goto :goto_1e

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;->bs()Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoe;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaoe;->zzc(Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_1e

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public br()Lcom/google/android/gms/internal/zzaoh;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Expected one JSON element but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmA:Lcom/google/android/gms/internal/zzaoh;

    return-object v0
.end method

.method public bt()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaoe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaoe;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bu()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;->bs()Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaoe;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bv()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaok;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaok;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bw()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;->bs()Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaok;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bx()Lcom/google/android/gms/internal/zzaqa;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzapp;->bmy:Lcom/google/android/gms/internal/zzaon;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqa;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->bx()Lcom/google/android/gms/internal/zzaqa;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->isLenient()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_6
.end method

.method public zzcu(J)Lcom/google/android/gms/internal/zzaqa;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    return-object p0
.end method

.method public zzdf(Z)Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    return-object p0
.end method

.method public zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;->bs()Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaok;

    if-eqz v0, :cond_1d

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapp;->bmz:Ljava/lang/String;

    return-object p0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->bx()Lcom/google/android/gms/internal/zzaqa;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapp;->zzd(Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_6
.end method
