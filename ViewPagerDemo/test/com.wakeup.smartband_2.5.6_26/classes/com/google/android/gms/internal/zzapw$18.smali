.class final Lcom/google/android/gms/internal/zzapw$18;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Lcom/google/android/gms/internal/zzaoh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Lcom/google/android/gms/internal/zzaoh;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aV()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aU()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aY()Lcom/google/android/gms/internal/zzaon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqa;

    goto :goto_b

    :cond_24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdf(Z)Lcom/google/android/gms/internal/zzaqa;

    goto :goto_b

    :cond_32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    goto :goto_b

    :cond_3a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aS()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bt()Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aX()Lcom/google/android/gms/internal/zzaoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoe;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzapw$18;->zza(Lcom/google/android/gms/internal/zzaqa;Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_4b

    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bu()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_b

    :cond_5f
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aT()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bv()Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoh;->aW()Lcom/google/android/gms/internal/zzaok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaok;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaqa;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzapw$18;->zza(Lcom/google/android/gms/internal/zzaqa;Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_74

    :cond_93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bw()Lcom/google/android/gms/internal/zzaqa;

    goto/16 :goto_b

    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$18;->zza(Lcom/google/android/gms/internal/zzaqa;Lcom/google/android/gms/internal/zzaoh;)V

    return-void
.end method

.method public zzad(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapw$26;->bmF:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :pswitch_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    new-instance v2, Lcom/google/android/gms/internal/zzape;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzape;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Number;)V

    goto :goto_1e

    :pswitch_2e
    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1e

    :pswitch_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    goto :goto_1e

    :pswitch_42
    new-instance v1, Lcom/google/android/gms/internal/zzaoe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaoe;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    :goto_4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$18;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaoe;->zzc(Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_4a

    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    move-object v0, v1

    goto :goto_1e

    :pswitch_5f
    new-instance v1, Lcom/google/android/gms/internal/zzaok;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaok;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginObject()V

    :goto_67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$18;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzaok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoh;)V

    goto :goto_67

    :cond_7b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endObject()V

    move-object v0, v1

    goto :goto_1e

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2e
        :pswitch_15
        :pswitch_3c
        :pswitch_42
        :pswitch_5f
    .end packed-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$18;->zzad(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    return-object v0
.end method
