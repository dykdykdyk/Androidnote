.class final Lcom/google/android/gms/internal/zzaos;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaos$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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

.field private final blj:Lcom/google/android/gms/internal/zzaop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaop",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final blk:Lcom/google/android/gms/internal/zzaog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaog",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bll:Lcom/google/android/gms/internal/zzaob;

.field private final blm:Lcom/google/android/gms/internal/zzapx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bln:Lcom/google/android/gms/internal/zzaou;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaop;Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaou;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaop",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzaog",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzaob;",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzaou;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaos;->blj:Lcom/google/android/gms/internal/zzaop;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaos;->blk:Lcom/google/android/gms/internal/zzaog;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaos;->bll:Lcom/google/android/gms/internal/zzaob;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaos;->blm:Lcom/google/android/gms/internal/zzapx;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaos;->bln:Lcom/google/android/gms/internal/zzaou;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaop;Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaou;Lcom/google/android/gms/internal/zzaos$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzaos;-><init>(Lcom/google/android/gms/internal/zzaop;Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/internal/zzaou;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaos;->bkU:Lcom/google/android/gms/internal/zzaot;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaos;->bll:Lcom/google/android/gms/internal/zzaob;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaos;->bln:Lcom/google/android/gms/internal/zzaou;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaos;->blm:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzaou;Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaos;->bkU:Lcom/google/android/gms/internal/zzaot;

    goto :goto_4
.end method

.method public static zza(Lcom/google/android/gms/internal/zzapx;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaou;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzaou;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzaos$zza;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaos$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapx;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzaos$1;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzapx;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaou;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapx",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzaou;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_15

    const/4 v3, 0x1

    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/zzaos$zza;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaos$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapx;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzaos$1;)V

    return-object v0

    :cond_15
    const/4 v3, 0x0

    goto :goto_c
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaos;->blj:Lcom/google/android/gms/internal/zzaop;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaos;->bd()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaos;->blj:Lcom/google/android/gms/internal/zzaop;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaos;->blm:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaos;->bll:Lcom/google/android/gms/internal/zzaob;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaob;->bkS:Lcom/google/android/gms/internal/zzaoo;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzaop;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzapi;->zzb(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzaqa;)V

    goto :goto_b
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaos;->blk:Lcom/google/android/gms/internal/zzaog;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaos;->bd()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaot;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapi;->zzh(Lcom/google/android/gms/internal/zzapy;)Lcom/google/android/gms/internal/zzaoh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoh;->aV()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_c

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaos;->blk:Lcom/google/android/gms/internal/zzaog;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaos;->blm:Lcom/google/android/gms/internal/zzapx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaos;->bll:Lcom/google/android/gms/internal/zzaob;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaob;->bkR:Lcom/google/android/gms/internal/zzaof;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaog;->zzb(Lcom/google/android/gms/internal/zzaoh;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaof;)Ljava/lang/Object;
    :try_end_28
    .catch Lcom/google/android/gms/internal/zzaol; {:try_start_19 .. :try_end_28} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_2c

    move-result-object v0

    goto :goto_c

    :catch_2a
    move-exception v0

    throw v0

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaol;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaol;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
