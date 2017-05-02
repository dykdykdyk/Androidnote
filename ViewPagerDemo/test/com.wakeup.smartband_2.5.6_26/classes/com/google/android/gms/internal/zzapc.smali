.class public final Lcom/google/android/gms/internal/zzapc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blF:Lcom/google/android/gms/internal/zzapc;


# instance fields
.field private blG:D

.field private blH:I

.field private blI:Z

.field private blJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzanx;",
            ">;"
        }
    .end annotation
.end field

.field private blK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzanx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzapc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapc;->blF:Lcom/google/android/gms/internal/zzapc;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzapc;->blG:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/android/gms/internal/zzapc;->blH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzapc;->blI:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaox;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaox;->bf()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapc;->blG:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private zza(Lcom/google/android/gms/internal/zzaox;Lcom/google/android/gms/internal/zzaoy;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaox;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaoy;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private zza(Lcom/google/android/gms/internal/zzaoy;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaoy;->bf()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapc;->blG:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private zzm(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private zzn(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zzo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private zzo(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected bh()Lcom/google/android/gms/internal/zzapc;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapc;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->bh()Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 9
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

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzapc;->zza(Ljava/lang/Class;Z)Z

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzapc;->zza(Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v3, :cond_14

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzapc$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapc$1;-><init>(Lcom/google/android/gms/internal/zzapc;ZZLcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)V

    goto :goto_13
.end method

.method public zza(Lcom/google/android/gms/internal/zzanx;ZZ)Lcom/google/android/gms/internal/zzapc;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->bh()Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    if-eqz p2, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz p3, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-object v0
.end method

.method public zza(Ljava/lang/Class;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapc;->blG:D

    const-wide/high16 v4, -0x4010000000000000L

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_21

    const-class v0, Lcom/google/android/gms/internal/zzaox;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaox;

    const-class v1, Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaoy;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaox;Lcom/google/android/gms/internal/zzaoy;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_20
    return v0

    :cond_21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapc;->blI:Z

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zzn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_20

    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zzm(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_20

    :cond_35
    if-eqz p2, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    :goto_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzanx;->zzh(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v2

    goto :goto_20

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    goto :goto_39

    :cond_54
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public zza(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/zzapc;->blH:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzapc;->blG:D

    const-wide/high16 v4, -0x4010000000000000L

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2c

    const-class v0, Lcom/google/android/gms/internal/zzaox;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaox;

    const-class v1, Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaoy;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaox;Lcom/google/android/gms/internal/zzaoy;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v2

    goto :goto_b

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v2

    goto :goto_b

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapc;->blI:Z

    if-nez v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapc;->zzn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v2

    goto :goto_b

    :cond_44
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapc;->zzm(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    goto :goto_b

    :cond_50
    if-eqz p2, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blJ:Ljava/util/List;

    :goto_54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    new-instance v1, Lcom/google/android/gms/internal/zzany;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzany;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanx;->zza(Lcom/google/android/gms/internal/zzany;)Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v2

    goto :goto_b

    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc;->blK:Ljava/util/List;

    goto :goto_54

    :cond_7a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public varargs zzg([I)Lcom/google/android/gms/internal/zzapc;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->bh()Lcom/google/android/gms/internal/zzapc;

    move-result-object v1

    iput v0, v1, Lcom/google/android/gms/internal/zzapc;->blH:I

    array-length v2, p1

    :goto_8
    if-ge v0, v2, :cond_14

    aget v3, p1, v0

    iget v4, v1, Lcom/google/android/gms/internal/zzapc;->blH:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/zzapc;->blH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-object v1
.end method
