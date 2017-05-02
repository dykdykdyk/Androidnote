.class public final Lcom/google/android/gms/internal/zzaob;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaob$zza;
    }
.end annotation


# instance fields
.field private final bkJ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Lcom/google/android/gms/internal/zzaob$zza",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bkK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Lcom/google/android/gms/internal/zzaot",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bkL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaou;",
            ">;"
        }
    .end annotation
.end field

.field private final bkM:Lcom/google/android/gms/internal/zzapb;

.field private final bkN:Z

.field private final bkO:Z

.field private final bkP:Z

.field private final bkQ:Z

.field final bkR:Lcom/google/android/gms/internal/zzaof;

.field final bkS:Lcom/google/android/gms/internal/zzaoo;


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzapc;->blF:Lcom/google/android/gms/internal/zzapc;

    sget-object v2, Lcom/google/android/gms/internal/zzanz;->bkD:Lcom/google/android/gms/internal/zzanz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/android/gms/internal/zzaor;->blg:Lcom/google/android/gms/internal/zzaor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzaob;-><init>(Lcom/google/android/gms/internal/zzapc;Lcom/google/android/gms/internal/zzaoa;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzaor;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzapc;Lcom/google/android/gms/internal/zzaoa;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzaor;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapc;",
            "Lcom/google/android/gms/internal/zzaoa;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaod",
            "<*>;>;ZZZZZZ",
            "Lcom/google/android/gms/internal/zzaor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaou;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkJ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkK:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/zzaob$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaob$1;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkR:Lcom/google/android/gms/internal/zzaof;

    new-instance v0, Lcom/google/android/gms/internal/zzaob$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaob$2;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkS:Lcom/google/android/gms/internal/zzaoo;

    new-instance v0, Lcom/google/android/gms/internal/zzapb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzapb;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzaob;->bkN:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzaob;->bkP:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzaob;->bkO:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzaob;->bkQ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnI:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapr;->bmp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bne:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bmY:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bna:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnc:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaor;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzaob;->zzdd(Z)Lcom/google/android/gms/internal/zzaot;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzaob;->zzde(Z)Lcom/google/android/gms/internal/zzaot;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnj:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnl:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnr:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnt:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/android/gms/internal/zzapw;->bnn:Lcom/google/android/gms/internal/zzaot;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/android/gms/internal/zzapw;->bno:Lcom/google/android/gms/internal/zzaot;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzaot;)Lcom/google/android/gms/internal/zzaou;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnv:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnx:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnB:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnG:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnz:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bmV:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapm;->bmp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnE:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapu;->bmp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapt;->bmp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnC:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapk;->bmp:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bmT:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzapl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzapl;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzapq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-direct {v1, v2, p5}, Lcom/google/android/gms/internal/zzapq;-><init>(Lcom/google/android/gms/internal/zzapb;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzapn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzapn;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzapw;->bnJ:Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzaps;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-direct {v1, v2, p2, p1}, Lcom/google/android/gms/internal/zzaps;-><init>(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaoa;Lcom/google/android/gms/internal/zzapc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkL:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaor;)Lcom/google/android/gms/internal/zzaot;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaor;",
            ")",
            "Lcom/google/android/gms/internal/zzaot",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaor;->blg:Lcom/google/android/gms/internal/zzaor;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bnf:Lcom/google/android/gms/internal/zzaot;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzaob$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaob$5;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    goto :goto_6
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaob;D)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaob;->zzn(D)V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapy;)V
    .registers 4

    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bot:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/zzaoi;

    const-string/jumbo v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Lcom/google/android/gms/internal/zzaqb; {:try_start_2 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1a

    :catch_13
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_21
    return-void
.end method

.method private zzdd(Z)Lcom/google/android/gms/internal/zzaot;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzaot",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bnh:Lcom/google/android/gms/internal/zzaot;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzaob$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaob$3;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    goto :goto_4
.end method

.method private zzde(Z)Lcom/google/android/gms/internal/zzaot;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzaot",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bng:Lcom/google/android/gms/internal/zzaot;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzaob$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaob$4;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    goto :goto_4
.end method

.method private zzn(D)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaob;->bkN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob;->bkL:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaou;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaou;",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkL:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaob;->bkL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaou;

    if-nez v2, :cond_24

    if-ne v0, p1, :cond_12

    move v2, v1

    goto :goto_12

    :cond_24
    invoke-interface {v0, p0, p2}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaot;

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_92

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_23
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaob$zza;

    if-nez v0, :cond_a

    :try_start_2b
    new-instance v3, Lcom/google/android/gms/internal/zzaob$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaob$zza;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaob;->bkL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzaob$zza;->zza(Lcom/google/android/gms/internal/zzaot;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaob;->bkK:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_86

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob;->bkJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_a

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "GSON cannot handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob;->bkJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_91
    throw v0

    :cond_92
    move-object v2, v0

    goto :goto_23
.end method

.method public zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaob;->bkP:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/zzaqa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaob;->bkQ:Z

    if-eqz v1, :cond_19

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqa;->setIndent(Ljava/lang/String;)V

    :cond_19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaob;->bkN:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaoh;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaph;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaoh;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzapo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzapo;-><init>(Lcom/google/android/gms/internal/zzaoh;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapy;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzapy;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzapy;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;,
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_36
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    if-eqz v1, :cond_24

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_1b

    :cond_24
    :try_start_24
    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapy;->setLenient(Z)V

    throw v0

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_36
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2a
.end method

.method public zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;,
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzapy;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapy;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapy;)V

    return-object v1
.end method

.method public zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqa;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqa;->bJ()Z

    move-result v2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaob;->bkO:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqa;->bK()Z

    move-result v3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaob;->bkN:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    :try_start_1a
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzapi;->zzb(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzapi;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaqa;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaqa;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaqa;->bJ()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzaob;->bkO:Z

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaqa;->bK()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzaob;->bkN:Z

    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v4, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaqa;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaqa;->zzdh(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaqa;->zzdi(Z)V

    throw v0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoi;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzapi;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaqa;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaoh;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzcl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zzb(Lcom/google/android/gms/internal/zzaoh;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaob;->zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaoq;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaob;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaph;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaot;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapx;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    return-object v0
.end method
