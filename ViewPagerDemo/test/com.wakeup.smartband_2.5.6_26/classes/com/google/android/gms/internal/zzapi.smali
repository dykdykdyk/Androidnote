.class public final Lcom/google/android/gms/internal/zzapi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzapi$zza;
    }
.end annotation


# direct methods
.method public static zza(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 3

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzapi$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzapi$zza;-><init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzapi$1;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bnH:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaol;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzapw;->bnH:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcom/google/android/gms/internal/zzaqb; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    if-eqz v1, :cond_14

    sget-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    goto :goto_d

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
