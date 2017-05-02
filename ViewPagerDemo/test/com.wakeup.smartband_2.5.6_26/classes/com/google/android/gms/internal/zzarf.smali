.class public Lcom/google/android/gms/internal/zzarf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzare",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final bhd:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final bqw:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    return-void
.end method

.method public static zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzarf;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/zzare",
            "<TM;>;T:",
            "Lcom/google/android/gms/internal/zzark;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/google/android/gms/internal/zzarf",
            "<TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzarf;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzarf;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method private zzaz(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarm;",
            ">;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarm;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzarm;->avk:[B

    array-length v4, v4

    if-eqz v4, :cond_1b

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzarf;->zza(Lcom/google/android/gms/internal/zzarm;Ljava/util/List;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_27

    const/4 v0, 0x0

    :cond_26
    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_37
    if-ge v2, v1, :cond_26

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method private zzba(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarm;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarm;->avk:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarc;->zzbd([B)Lcom/google/android/gms/internal/zzarc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarf;->zzck(Lcom/google/android/gms/internal/zzarc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzarf;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzarf;

    iget v2, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzarf;->type:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzarf;->tag:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eq v2, v3, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    add-int/2addr v0, v1

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected zza(Lcom/google/android/gms/internal/zzarm;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzarm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzarm;->avk:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarc;->zzbd([B)Lcom/google/android/gms/internal/zzarc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarf;->zzck(Lcom/google/android/gms/internal/zzarc;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V

    goto :goto_7
.end method

.method final zzay(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarm;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzarf;->zzaz(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzarf;->zzba(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V
    .registers 7

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzard;->zzahm(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    packed-switch v0, :pswitch_data_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2f
    :try_start_2f
    check-cast p1, Lcom/google/android/gms/internal/zzark;

    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarn;->zzahu(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzard;->zzb(Lcom/google/android/gms/internal/zzark;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzard;->zzai(II)V

    :goto_3e
    return-void

    :pswitch_3f
    check-cast p1, Lcom/google/android/gms/internal/zzark;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzard;->zzc(Lcom/google/android/gms/internal/zzark;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_44} :catch_28

    goto :goto_3e

    nop

    :pswitch_data_46
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_3f
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V
    .registers 6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_13

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzarf;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzard;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method protected zzck(Lcom/google/android/gms/internal/zzarc;)Ljava/lang/Object;
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    :goto_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    packed-switch v0, :pswitch_data_a8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v2, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_2e} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2e} :catch_75
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2e} :catch_9e

    :catch_2e
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarf;->bhd:Ljava/lang/Class;

    move-object v1, v0

    goto :goto_b

    :pswitch_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzark;

    iget v2, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzarn;->zzahu(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzarc;->zza(Lcom/google/android/gms/internal/zzark;I)V

    :goto_6a
    return-object v0

    :pswitch_6b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzark;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzarc;->zza(Lcom/google/android/gms/internal/zzark;)V
    :try_end_74
    .catch Ljava/lang/InstantiationException; {:try_start_5b .. :try_end_74} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5b .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_74} :catch_9e

    goto :goto_6a

    :catch_75
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_9e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_a8
    .packed-switch 0xa
        :pswitch_5b
        :pswitch_6b
    .end packed-switch
.end method

.method zzcu(Ljava/lang/Object;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarf;->bqw:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarf;->zzcv(Ljava/lang/Object;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarf;->zzcw(Ljava/lang/Object;)I

    move-result v0

    goto :goto_8
.end method

.method protected zzcv(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1a

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzarf;->zzcw(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method protected zzcw(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzarf;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarn;->zzahu(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    packed-switch v1, :pswitch_data_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzarf;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29
    check-cast p1, Lcom/google/android/gms/internal/zzark;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzard;->zzb(ILcom/google/android/gms/internal/zzark;)I

    move-result v0

    :goto_2f
    return v0

    :pswitch_30
    check-cast p1, Lcom/google/android/gms/internal/zzark;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzard;->zzc(ILcom/google/android/gms/internal/zzark;)I

    move-result v0

    goto :goto_2f

    nop

    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_29
        :pswitch_30
    .end packed-switch
.end method
