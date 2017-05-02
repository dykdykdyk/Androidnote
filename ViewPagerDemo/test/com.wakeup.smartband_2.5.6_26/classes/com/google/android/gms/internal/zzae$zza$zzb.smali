.class public final Lcom/google/android/gms/internal/zzae$zza$zzb;
.super Lcom/google/android/gms/internal/zzare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzae$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzare",
        "<",
        "Lcom/google/android/gms/internal/zzae$zza$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public zzel:Ljava/lang/Long;

.field public zzem:Ljava/lang/Long;

.field public zzfj:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzare;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->bqE:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzard;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzb(IJ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzb(IJ)V

    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzard;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzae$zza$zzb;->zze(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzae$zza$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzae$zza$zzb;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cw()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzarc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    goto :goto_0

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_24
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzare;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzel:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzem:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zza$zzb;->zzfj:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzard;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method
