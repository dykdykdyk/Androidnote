.class final Lcom/google/android/gms/internal/zzapw$zza;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/google/android/gms/internal/zzaot",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bnT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final bnU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnT:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnU:Ljava/util/Map;

    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v4, v3

    :goto_1a
    if-ge v4, v5, :cond_5c

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v7, Lcom/google/android/gms/internal/zzaow;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaow;

    if-eqz v1, :cond_46

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaow;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaow;->be()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v1, v3

    :goto_3a
    if-ge v1, v8, :cond_46

    aget-object v9, v7, v1

    iget-object v10, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnT:Ljava/util/Map;

    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_46
    move-object v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnT:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnU:Ljava/util/Map;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_51} :catch_55

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1a

    :catch_55
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5c
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqa;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqa;->zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnU:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$zza;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Enum;)V

    return-void
.end method

.method public zzaf(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapw$zza;->bnT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_c
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$zza;->zzaf(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
