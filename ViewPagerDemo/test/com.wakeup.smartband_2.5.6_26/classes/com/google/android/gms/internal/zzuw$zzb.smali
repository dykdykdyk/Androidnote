.class public Lcom/google/android/gms/internal/zzuw$zzb;
.super Lcom/google/android/gms/internal/zzuw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzuw",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzuw;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzuw$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuw$zzb;->zzc(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Integer;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzb;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzb;->zzkq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzb;->getSource()I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzuz;->getIntFlagValue(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzb;->zzkq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1a
.end method
