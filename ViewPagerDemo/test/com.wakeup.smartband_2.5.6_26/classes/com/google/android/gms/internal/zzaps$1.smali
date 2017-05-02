.class Lcom/google/android/gms/internal/zzaps$1;
.super Lcom/google/android/gms/internal/zzaps$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzapx;ZZ)Lcom/google/android/gms/internal/zzaps$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bmG:Lcom/google/android/gms/internal/zzaot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaot",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic bmH:Lcom/google/android/gms/internal/zzaob;

.field final synthetic bmI:Ljava/lang/reflect/Field;

.field final synthetic bmJ:Lcom/google/android/gms/internal/zzapx;

.field final synthetic bmK:Z

.field final synthetic bmL:Lcom/google/android/gms/internal/zzaps;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaps;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;Z)V
    .registers 13

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmL:Lcom/google/android/gms/internal/zzaps;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaps$1;->bmH:Lcom/google/android/gms/internal/zzaob;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaps$1;->bmI:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaps$1;->bmJ:Lcom/google/android/gms/internal/zzapx;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzaps$1;->bmK:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzaps$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$1;->bmL:Lcom/google/android/gms/internal/zzaps;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmH:Lcom/google/android/gms/internal/zzaob;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaps$1;->bmI:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaps$1;->bmJ:Lcom/google/android/gms/internal/zzapx;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzaps;Lcom/google/android/gms/internal/zzaob;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaps$1;->bmG:Lcom/google/android/gms/internal/zzaot;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzapy;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$1;->bmG:Lcom/google/android/gms/internal/zzaot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmK:Z

    if-nez v1, :cond_11

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmI:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps$1;->bmI:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzapv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaps$1;->bmH:Lcom/google/android/gms/internal/zzaob;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaps$1;->bmG:Lcom/google/android/gms/internal/zzaot;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaps$1;->bmJ:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzapv;-><init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzaot;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    return-void
.end method

.method public zzct(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmN:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps$1;->bmI:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
