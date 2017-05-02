.class final Lcom/google/android/gms/internal/zzqt$zza;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/google/android/gms/common/api/zzd",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final wf:I

.field final synthetic yE:Lcom/google/android/gms/internal/zzqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/api/zzd;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzd;",
            "I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzd",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zza;->yE:Lcom/google/android/gms/internal/zzqt;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/zzqt$zza;->wf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqt$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqt$zza;->wf:I

    return v0
.end method


# virtual methods
.method public zzasd()V
    .registers 5

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zza;->yE:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zza;->yE:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzqt$zza;->wf:I

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
