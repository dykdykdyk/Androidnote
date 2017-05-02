.class final Lcom/google/android/gms/internal/zzapf$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final aXd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field blZ:Lcom/google/android/gms/internal/zzapf$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bmc:Lcom/google/android/gms/internal/zzapf$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bmd:Lcom/google/android/gms/internal/zzapf$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bme:Lcom/google/android/gms/internal/zzapf$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bmf:Lcom/google/android/gms/internal/zzapf$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field height:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->bmf:Lcom/google/android/gms/internal/zzapf$zzd;

    iput-object p0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->blZ:Lcom/google/android/gms/internal/zzapf$zzd;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzapf$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzapf$zzd;Lcom/google/android/gms/internal/zzapf$zzd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;TK;",
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->bmc:Lcom/google/android/gms/internal/zzapf$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->height:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapf$zzd;->blZ:Lcom/google/android/gms/internal/zzapf$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapf$zzd;->bmf:Lcom/google/android/gms/internal/zzapf$zzd;

    iput-object p0, p4, Lcom/google/android/gms/internal/zzapf$zzd;->blZ:Lcom/google/android/gms/internal/zzapf$zzd;

    iput-object p0, p3, Lcom/google/android/gms/internal/zzapf$zzd;->bmf:Lcom/google/android/gms/internal/zzapf$zzd;

    return-void
.end method


# virtual methods
.method public bj()Lcom/google/android/gms/internal/zzapf$zzd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->bmd:Lcom/google/android/gms/internal/zzapf$zzd;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzapf$zzd;->bmd:Lcom/google/android/gms/internal/zzapf$zzd;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public bk()Lcom/google/android/gms/internal/zzapf$zzd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzapf$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->bme:Lcom/google/android/gms/internal/zzapf$zzd;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzapf$zzd;->bme:Lcom/google/android/gms/internal/zzapf$zzd;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    if-nez v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    if-nez v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_1b
    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1b
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    if-nez v2, :cond_13

    :goto_a
    xor-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapf$zzd;->aXd:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapf$zzd;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
