.class public Lcom/google/android/gms/internal/zzapx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final bmR:Ljava/lang/reflect/Type;

.field final bnV:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final bnW:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapx;->zzq(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bnV:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapx;->bnW:I

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaoz;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bnV:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapx;->bnW:I

    return-void
.end method

.method public static zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapx;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static zzq(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zze(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapx;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final by()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bnV:Ljava/lang/Class;

    return-object v0
.end method

.method public final bz()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzapx;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/android/gms/internal/zzapx;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapa;->zza(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapx;->bnW:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapx;->bmR:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzg(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
