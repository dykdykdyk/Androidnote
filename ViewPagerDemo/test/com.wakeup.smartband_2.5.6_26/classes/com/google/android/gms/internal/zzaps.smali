.class public final Lcom/google/android/gms/internal/zzaps;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaps$zza;,
        Lcom/google/android/gms/internal/zzaps$zzb;
    }
.end annotation


# instance fields
.field private final bkM:Lcom/google/android/gms/internal/zzapb;

.field private final bkV:Lcom/google/android/gms/internal/zzapc;

.field private final bkX:Lcom/google/android/gms/internal/zzaoa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaoa;Lcom/google/android/gms/internal/zzapc;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaps;->bkM:Lcom/google/android/gms/internal/zzapb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaps;->bkX:Lcom/google/android/gms/internal/zzaoa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaps;->bkV:Lcom/google/android/gms/internal/zzapc;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzaov;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaov;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-static {v1, p1, p3, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaov;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaps;Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzapx;ZZ)Lcom/google/android/gms/internal/zzaps$zzb;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;ZZ)",
            "Lcom/google/android/gms/internal/zzaps$zzb;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaph;->zzk(Ljava/lang/reflect/Type;)Z

    move-result v8

    new-instance v0, Lcom/google/android/gms/internal/zzaps$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzaps$1;-><init>(Lcom/google/android/gms/internal/zzaps;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;Z)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzaoa;Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaoa;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzaow;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaow;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_17

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/zzaoa;->zzc(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v1

    :cond_17
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaow;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaow;->be()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method private zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Ljava/lang/Class;)Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaps$zzb;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v10

    :goto_c
    return-object v1

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v12

    :goto_11
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_ce

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_1e
    if-ge v11, v14, :cond_b6

    aget-object v3, v13, v11

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzaps;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzaps;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    if-nez v6, :cond_38

    if-nez v7, :cond_38

    :cond_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1e

    :cond_38
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzapa;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/zzaps;->zzd(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v1, 0x0

    move v9, v1

    :goto_53
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_7d

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v9, :cond_64

    const/4 v6, 0x0

    :cond_64
    invoke-static {v15}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzapx;ZZ)Lcom/google/android/gms/internal/zzaps$zzb;

    move-result-object v1

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaps$zzb;

    if-nez v8, :cond_d1

    :goto_78
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_53

    :cond_7d
    if-eqz v8, :cond_34

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaps$zzb;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzapa;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_11

    :cond_ce
    move-object v1, v10

    goto/16 :goto_c

    :cond_d1
    move-object v1, v8

    goto :goto_78
.end method

.method static zza(Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/zzapc;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private zzd(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bkX:Lcom/google/android/gms/internal/zzaoa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaoa;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v2

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v3

    new-instance v1, Lcom/google/android/gms/internal/zzaps$zza;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzaps$zza;-><init>(Lcom/google/android/gms/internal/zzapg;Ljava/util/Map;Lcom/google/android/gms/internal/zzaps$1;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public zza(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bkV:Lcom/google/android/gms/internal/zzapc;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzaps;->zza(Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/zzapc;)Z

    move-result v0

    return v0
.end method
