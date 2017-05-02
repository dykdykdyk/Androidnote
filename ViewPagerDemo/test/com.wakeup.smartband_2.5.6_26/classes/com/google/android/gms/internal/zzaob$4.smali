.class Lcom/google/android/gms/internal/zzaob$4;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaob;->zzde(Z)Lcom/google/android/gms/internal/zzaot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bkT:Lcom/google/android/gms/internal/zzaob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaob;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaob$4;->bkT:Lcom/google/android/gms/internal/zzaob;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Number;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob$4;->bkT:Lcom/google/android/gms/internal/zzaob;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaob;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqa;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqa;

    goto :goto_5
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaob$4;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaob$4;->zzf(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Float;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c
.end method
