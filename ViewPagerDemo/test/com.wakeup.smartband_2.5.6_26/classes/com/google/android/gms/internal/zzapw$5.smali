.class final Lcom/google/android/gms/internal/zzapw$5;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$5;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqa;->zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$5;->zzq(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzq(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
