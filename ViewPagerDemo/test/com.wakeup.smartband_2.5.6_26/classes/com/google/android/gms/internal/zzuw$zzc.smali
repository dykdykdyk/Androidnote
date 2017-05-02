.class public Lcom/google/android/gms/internal/zzuw$zzc;
.super Lcom/google/android/gms/internal/zzuw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzuw",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzuw;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzuw$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuw$zzc;->zzd(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Long;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzc;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzc;->zzkq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzc;->getSource()I

    move-result v0

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzuz;->getLongFlagValue(Ljava/lang/String;JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuw$zzc;->zzkq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1a
.end method
