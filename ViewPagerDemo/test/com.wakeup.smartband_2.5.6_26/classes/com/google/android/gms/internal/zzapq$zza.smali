.class final Lcom/google/android/gms/internal/zzapq$zza;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final bmC:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final bmD:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic bmE:Lcom/google/android/gms/internal/zzapq;

.field private final bmt:Lcom/google/android/gms/internal/zzapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapg",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapq;Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Lcom/google/android/gms/internal/zzapg;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaot",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaot",
            "<TV;>;",
            "Lcom/google/android/gms/internal/zzapg",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmE:Lcom/google/android/gms/internal/zzapq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzapv;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/gms/internal/zzapv;-><init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmC:Lcom/google/android/gms/internal/zzaot;

    new-instance v0, Lcom/google/android/gms/internal/zzapv;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/android/gms/internal/zzapv;-><init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

    return-void
.end method

.method private zze(Lcom/google/android/gms/internal/zzaoh;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aU()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aY()Lcom/google/android/gms/internal/zzaon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bc()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoh;->aV()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "null"

    goto :goto_18

    :cond_43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapq$zza;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/Map;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqa;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmE:Lcom/google/android/gms/internal/zzapq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapq;->zza(Lcom/google/android/gms/internal/zzapq;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bv()Lcom/google/android/gms/internal/zzaqa;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaqa;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bw()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_6

    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmC:Lcom/google/android/gms/internal/zzaot;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzaot;->zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaoh;->aS()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaoh;->aT()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_86
    const/4 v0, 0x1

    :goto_87
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_5a

    :cond_8a
    move v0, v2

    goto :goto_87

    :cond_8c
    if-eqz v1, :cond_b7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bt()Lcom/google/android/gms/internal/zzaqa;

    :goto_91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bt()Lcom/google/android/gms/internal/zzaqa;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzapi;->zzb(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bu()Lcom/google/android/gms/internal/zzaqa;

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_b2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bu()Lcom/google/android/gms/internal/zzaqa;

    goto/16 :goto_6

    :cond_b7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bv()Lcom/google/android/gms/internal/zzaqa;

    :goto_ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d9

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapq$zza;->zze(Lcom/google/android/gms/internal/zzaoh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    :cond_d9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bw()Lcom/google/android/gms/internal/zzaqa;

    goto/16 :goto_6
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapq$zza;->zzl(Lcom/google/android/gms/internal/zzapy;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzapy;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapy;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v1, v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmt:Lcom/google/android/gms/internal/zzapg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapg;->bg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    if-ne v1, v2, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmC:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5f

    new-instance v0, Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    goto :goto_1c

    :cond_63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    goto :goto_c

    :cond_67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginObject()V

    :cond_6a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    sget-object v1, Lcom/google/android/gms/internal/zzapd;->blQ:Lcom/google/android/gms/internal/zzapd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzapd;->zzi(Lcom/google/android/gms/internal/zzapy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmC:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapq$zza;->bmD:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    new-instance v0, Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endObject()V

    goto/16 :goto_c
.end method
