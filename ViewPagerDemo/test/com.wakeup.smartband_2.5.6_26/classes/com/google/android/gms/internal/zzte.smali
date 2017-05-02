.class public Lcom/google/android/gms/internal/zzte;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzte$zza;
    }
.end annotation


# static fields
.field public static final RP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RS:Lcom/google/android/gms/internal/zzte;


# instance fields
.field private final RQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzte$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private final RR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzte$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "altitude"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "food_item"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "meal_type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "repetitions"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "resistance"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "resistance_type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "debug_session"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzte;->RP:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzte;->RS:Lcom/google/android/gms/internal/zzte;

    return-void
.end method

.method private constructor <init>()V
    .registers 15

    const-wide v12, 0x408f400000000000L

    const-wide/high16 v8, 0x4059000000000000L

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "latitude"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v2, -0x3fa9800000000000L

    const-wide v4, 0x4056800000000000L

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "longitude"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v2, -0x3f99800000000000L

    const-wide v4, 0x4066800000000000L

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "accuracy"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x40c3880000000000L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "bpm"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "altitude"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v2, -0x3f07960000000000L

    const-wide v4, 0x40f86a0000000000L

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "percentage"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "confidence"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "duration"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide/high16 v4, 0x43e0000000000000L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "height"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide/high16 v4, 0x4008000000000000L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "weight"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "speed"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x40c57c0000000000L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzte;->RR:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "com.google.step_count.delta"

    const-string/jumbo v8, "steps"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x3e45798ee2308c3aL

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzte;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "com.google.calories.consumed"

    const-string/jumbo v8, "calories"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzte;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "com.google.calories.expended"

    const-string/jumbo v8, "calories"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x3e0316b7e5807ca5L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzte;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "com.google.distance.delta"

    const-string/jumbo v8, "distance"

    new-instance v1, Lcom/google/android/gms/internal/zzte$zza;

    const-wide v4, 0x3e7ad7f29abcaf48L

    move-wide v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzte$zza;-><init>(DDLcom/google/android/gms/internal/zzte$1;)V

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/zzte;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzte;->RQ:Ljava/util/Map;

    return-void
.end method

.method public static zzbfu()Lcom/google/android/gms/internal/zzte;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzte;->RS:Lcom/google/android/gms/internal/zzte;

    return-object v0
.end method

.method private static zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method zzak(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzte$zza;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzte;->RQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzte$zza;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method zzjt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzte$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzte;->RR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzte$zza;

    return-object v0
.end method
