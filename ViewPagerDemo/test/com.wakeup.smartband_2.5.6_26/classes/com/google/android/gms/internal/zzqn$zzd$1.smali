.class Lcom/google/android/gms/internal/zzqn$zzd$1;
.super Lcom/google/android/gms/internal/zzqr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqn$zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xL:Lcom/google/android/gms/internal/zzqn;

.field final synthetic xM:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic xN:Lcom/google/android/gms/internal/zzqn$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn$zzd;Lcom/google/android/gms/internal/zzqq;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzd$1;->xN:Lcom/google/android/gms/internal/zzqn$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn$zzd$1;->xL:Lcom/google/android/gms/internal/zzqn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqn$zzd$1;->xM:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqr$zza;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method public zzari()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd$1;->xL:Lcom/google/android/gms/internal/zzqn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$zzd$1;->xM:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
