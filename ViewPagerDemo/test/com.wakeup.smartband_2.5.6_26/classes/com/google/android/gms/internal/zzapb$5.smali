.class Lcom/google/android/gms/internal/zzapb$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapb;->zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzapg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blA:Lcom/google/android/gms/internal/zzapb;

.field final synthetic blD:Lcom/google/android/gms/internal/zzaod;

.field final synthetic blz:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaod;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb$5;->blA:Lcom/google/android/gms/internal/zzapb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapb$5;->blD:Lcom/google/android/gms/internal/zzaod;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapb$5;->blz:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bg()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$5;->blD:Lcom/google/android/gms/internal/zzaod;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapb$5;->blz:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaod;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
