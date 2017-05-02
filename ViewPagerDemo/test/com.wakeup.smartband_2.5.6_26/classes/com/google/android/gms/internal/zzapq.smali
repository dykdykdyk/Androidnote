.class public final Lcom/google/android/gms/internal/zzapq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzapq$zza;
    }
.end annotation


# instance fields
.field private final bkM:Lcom/google/android/gms/internal/zzapb;

.field private final bmB:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapb;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapq;->bkM:Lcom/google/android/gms/internal/zzapb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzapq;->bmB:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaot;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaob;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzaot",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_b

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bmX:Lcom/google/android/gms/internal/zzaot;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzapq;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapq;->bmB:Z

    return v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
    .registers 11
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/internal/zzapa;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapa;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzapq;->zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzapq$zza;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzapq$zza;-><init>(Lcom/google/android/gms/internal/zzapq;Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Lcom/google/android/gms/internal/zzapg;)V

    goto :goto_13
.end method
