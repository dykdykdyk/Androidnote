.class Lcom/google/android/gms/internal/zzapb$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapb;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
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

.field private final blB:Lcom/google/android/gms/internal/zzapj;

.field final synthetic blC:Ljava/lang/Class;

.field final synthetic blz:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb$4;->blA:Lcom/google/android/gms/internal/zzapb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapb$4;->blC:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapb$4;->blz:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzapj;->bl()Lcom/google/android/gms/internal/zzapj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapb$4;->blB:Lcom/google/android/gms/internal/zzapj;

    return-void
.end method


# virtual methods
.method public bg()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb$4;->blB:Lcom/google/android/gms/internal/zzapj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapb$4;->blC:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapj;->zzf(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapb$4;->blz:Ljava/lang/reflect/Type;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x74

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
