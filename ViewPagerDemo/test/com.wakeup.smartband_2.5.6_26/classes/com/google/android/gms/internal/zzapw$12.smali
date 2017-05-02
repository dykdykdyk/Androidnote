.class final Lcom/google/android/gms/internal/zzapw$12;
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
        "Ljava/util/BitSet;",
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

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzapw$12;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/BitSet;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/util/BitSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bt()Lcom/google/android/gms/internal/zzaqa;

    move v0, v1

    :goto_b
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    :goto_18
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzcu(J)Lcom/google/android/gms/internal/zzaqa;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move v2, v1

    goto :goto_18

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bu()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_6
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapw$12;->zzx(Lcom/google/android/gms/internal/zzapy;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public zzx(Lcom/google/android/gms/internal/zzapy;)Ljava/util/BitSet;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    move v1, v2

    :goto_1c
    sget-object v5, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v5, :cond_99

    sget-object v5, Lcom/google/android/gms/internal/zzapw$26;->bmF:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapz;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a0

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextInt()I

    move-result v0

    if-eqz v0, :cond_66

    move v0, v3

    :goto_5a
    if-eqz v0, :cond_5f

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    goto :goto_1c

    :cond_66
    move v0, v2

    goto :goto_5a

    :pswitch_68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextBoolean()Z

    move-result v0

    goto :goto_5a

    :pswitch_6d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v0

    :try_start_71
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_74} :catch_7b

    move-result v0

    if-eqz v0, :cond_79

    move v0, v3

    goto :goto_5a

    :cond_79
    move v0, v2

    goto :goto_5a

    :catch_7b
    move-exception v1

    new-instance v1, Lcom/google/android/gms/internal/zzaoq;

    const-string/jumbo v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8f
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :cond_99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    move-object v0, v4

    goto/16 :goto_e

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_68
        :pswitch_6d
    .end packed-switch
.end method
