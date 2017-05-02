.class Lcom/google/android/gms/internal/zzapf$zzb$1;
.super Lcom/google/android/gms/internal/zzapf$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapf$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapf$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blY:Lcom/google/android/gms/internal/zzapf$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapf$zzb;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapf$zzb$1;->blY:Lcom/google/android/gms/internal/zzapf$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzapf$zzb;->blW:Lcom/google/android/gms/internal/zzapf;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzapf$zzc;-><init>(Lcom/google/android/gms/internal/zzapf;Lcom/google/android/gms/internal/zzapf$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapf$zzb$1;->bi()Lcom/google/android/gms/internal/zzapf$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    return-object v0
.end method
