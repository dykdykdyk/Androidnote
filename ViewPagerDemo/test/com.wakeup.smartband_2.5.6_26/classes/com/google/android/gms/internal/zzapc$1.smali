.class Lcom/google/android/gms/internal/zzapc$1;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bkU:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic blL:Z

.field final synthetic blM:Z

.field final synthetic blN:Lcom/google/android/gms/internal/zzaob;

.field final synthetic blO:Lcom/google/android/gms/internal/zzapx;

.field final synthetic blP:Lcom/google/android/gms/internal/zzapc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapc;ZZLcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapc$1;->blP:Lcom/google/android/gms/internal/zzapc;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzapc$1;->blL:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzapc$1;->blM:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapc$1;->blN:Lcom/google/android/gms/internal/zzaob;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzapc$1;->blO:Lcom/google/android/gms/internal/zzapx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    return-void
.end method

.method private bd()Lcom/google/android/gms/internal/zzaot;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzaot",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc$1;->bkU:Lcom/google/android/gms/internal/zzaot;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapc$1;->blN:Lcom/google/android/gms/internal/zzaob;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapc$1;->blP:Lcom/google/android/gms/internal/zzapc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapc$1;->blO:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaou;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapc$1;->bkU:Lcom/google/android/gms/internal/zzaot;

    goto :goto_4
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaqa;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapc$1;->blM:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc$1;->bd()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapc$1;->blL:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->skipValue()V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc$1;->bd()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method
