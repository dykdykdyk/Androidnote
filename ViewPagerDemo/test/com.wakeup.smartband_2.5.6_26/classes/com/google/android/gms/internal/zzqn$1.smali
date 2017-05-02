.class Lcom/google/android/gms/internal/zzqn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqn;->zzarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xE:Lcom/google/android/gms/internal/zzqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$1;->xE:Lcom/google/android/gms/internal/zzqn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$1;->xE:Lcom/google/android/gms/internal/zzqn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqn;->zzb(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$1;->xE:Lcom/google/android/gms/internal/zzqn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->zzbq(Landroid/content/Context;)V

    return-void
.end method
