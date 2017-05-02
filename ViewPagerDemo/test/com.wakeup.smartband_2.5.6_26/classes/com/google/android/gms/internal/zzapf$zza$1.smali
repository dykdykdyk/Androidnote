.class Lcom/google/android/gms/internal/zzapf$zza$1;
.super Lcom/google/android/gms/internal/zzapf$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapf$zza;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapf$zzc",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blX:Lcom/google/android/gms/internal/zzapf$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapf$zza;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapf$zza$1;->blX:Lcom/google/android/gms/internal/zzapf$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzapf$zza;->blW:Lcom/google/android/gms/internal/zzapf;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzapf$zzc;-><init>(Lcom/google/android/gms/internal/zzapf;Lcom/google/android/gms/internal/zzapf$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapf$zza$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapf$zza$1;->bi()Lcom/google/android/gms/internal/zzapf$zzd;

    move-result-object v0

    return-object v0
.end method
