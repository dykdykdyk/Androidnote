.class Lcom/google/android/gms/internal/zzun$zza;
.super Lcom/google/android/gms/internal/zztp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final Dj:Lcom/google/android/gms/internal/zzqc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;"
        }
    .end annotation
.end field

.field private So:I

.field private Sp:Lcom/google/android/gms/fitness/result/DataReadResult;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqc$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztp$zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zza;->So:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$zza;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqc$zzb;Lcom/google/android/gms/internal/zzun$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzun$zza;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "Fitness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "Fitness"

    iget v1, p0, Lcom/google/android/gms/internal/zzun$zza;->So:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Received batch result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    if-nez v0, :cond_48

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    :goto_2f
    iget v0, p0, Lcom/google/android/gms/internal/zzun$zza;->So:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zza;->So:I

    iget v0, p0, Lcom/google/android/gms/internal/zzun$zza;->So:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzbha()I

    move-result v1

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->Dj:Lcom/google/android/gms/internal/zzqc$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqc$zzb;->setResult(Ljava/lang/Object;)V

    :cond_46
    monitor-exit p0

    return-void

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->Sp:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzb(Lcom/google/android/gms/fitness/result/DataReadResult;)V

    goto :goto_2f

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_4e

    throw v0
.end method
