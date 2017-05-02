.class Lcom/google/android/gms/internal/zzuq$zzc;
.super Lcom/google/android/gms/internal/zzuh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private final Dj:Lcom/google/android/gms/internal/zzqc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final SB:Lcom/google/android/gms/internal/zzuq$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuq$zza;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzuq$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzuh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$zzc;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuq$zzc;->SB:Lcom/google/android/gms/internal/zzuq$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuq$zza;Lcom/google/android/gms/internal/zzuq$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzuq$zzc;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuq$zza;)V

    return-void
.end method


# virtual methods
.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzc;->SB:Lcom/google/android/gms/internal/zzuq$zza;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzc;->SB:Lcom/google/android/gms/internal/zzuq$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuq$zza;->zzbfv()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzc;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqc$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
