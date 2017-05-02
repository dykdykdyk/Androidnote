.class final Lcom/google/android/gms/internal/zzapv;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzaot",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bkU:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bmQ:Lcom/google/android/gms/internal/zzaob;

.field private final bmR:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapv;->bmQ:Lcom/google/android/gms/internal/zzaob;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapv;->bkU:Lcom/google/android/gms/internal/zzaot;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapv;->bmR:Ljava/lang/reflect/Type;

    return-void
.end method

.method private zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .registers 4

    if-eqz p2, :cond_12

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_12

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_12
    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapv;->bkU:Lcom/google/android/gms/internal/zzaot;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapv;->bmR:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzapv;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapv;->bmR:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapv;->bmQ:Lcom/google/android/gms/internal/zzaob;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaps$zza;

    if-nez v1, :cond_1e

    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapv;->bkU:Lcom/google/android/gms/internal/zzaot;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzaps$zza;

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapv;->bkU:Lcom/google/android/gms/internal/zzaot;

    goto :goto_1a
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapv;->bkU:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
