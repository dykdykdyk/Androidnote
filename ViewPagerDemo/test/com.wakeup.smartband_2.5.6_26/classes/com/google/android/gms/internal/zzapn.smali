.class public final Lcom/google/android/gms/internal/zzapn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;


# instance fields
.field private final bkM:Lcom/google/android/gms/internal/zzapb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapn;->bkM:Lcom/google/android/gms/internal/zzapb;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaov;)Lcom/google/android/gms/internal/zzaot;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapb;",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Lcom/google/android/gms/internal/zzaov;",
            ")",
            "Lcom/google/android/gms/internal/zzaot",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzaov;->value()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapx;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapg;->bg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaot;

    :goto_1a
    return-object v0

    :cond_1b
    const-class v1, Lcom/google/android/gms/internal/zzaou;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapx;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapg;->bg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaou;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    goto :goto_1a

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 5
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

    const-class v1, Lcom/google/android/gms/internal/zzaov;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaov;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapn;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaov;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    goto :goto_f
.end method
