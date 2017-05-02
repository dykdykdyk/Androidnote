.class Lcom/google/android/gms/internal/zzqt$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrq$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqt$zzc;->zzfx(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yL:I

.field final synthetic yM:Lcom/google/android/gms/internal/zzqt$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqt$zzc;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzc$1;->yM:Lcom/google/android/gms/internal/zzqt$zzc;

    iput p2, p0, Lcom/google/android/gms/internal/zzqt$zzc$1;->yL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzask()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzc$1;->yM:Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzc;->zze(Lcom/google/android/gms/internal/zzqt$zzc;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzc$1;->yM:Lcom/google/android/gms/internal/zzqt$zzc;

    iget v1, p0, Lcom/google/android/gms/internal/zzqt$zzc$1;->yL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqt$zzc;->zzf(IZ)V

    :cond_14
    return-void
.end method
