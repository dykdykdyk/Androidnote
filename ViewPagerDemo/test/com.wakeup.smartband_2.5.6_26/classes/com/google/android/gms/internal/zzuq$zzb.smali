.class Lcom/google/android/gms/internal/zzuq$zzb;
.super Lcom/google/android/gms/internal/zztq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final Dj:Lcom/google/android/gms/internal/zzqc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztq$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$zzb;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzuq$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzuq$zzb;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzb;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqc$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
