.class Lcom/google/android/gms/internal/zzapb$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapb;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzapg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blA:Lcom/google/android/gms/internal/zzapb;

.field final synthetic blz:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapb;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb$8;->blA:Lcom/google/android/gms/internal/zzapb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapb$8;->blz:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bg()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$8;->blz:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$8;->blz:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    const-string/jumbo v2, "Invalid EnumSet type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$8;->blz:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_3f
    new-instance v1, Lcom/google/android/gms/internal/zzaoi;

    const-string/jumbo v2, "Invalid EnumSet type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$8;->blz:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaoi;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_58
.end method
