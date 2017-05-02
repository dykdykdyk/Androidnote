.class public final Lcom/google/android/gms/internal/zzapl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaou;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzapl$zza;
    }
.end annotation


# instance fields
.field private final bkM:Lcom/google/android/gms/internal/zzapb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapl;->bkM:Lcom/google/android/gms/internal/zzapb;

    return-void
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

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapa;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapl;->bkM:Lcom/google/android/gms/internal/zzapb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzapl$zza;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzapl$zza;-><init>(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaot;Lcom/google/android/gms/internal/zzapg;)V

    goto :goto_11
.end method
