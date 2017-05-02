.class public final Lcom/google/android/gms/internal/zzpz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final tv:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final vw:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final wo:Z

.field private final wp:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpz;->wo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpz;->tv:Lcom/google/android/gms/common/api/Api;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpz;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz;->tv:Lcom/google/android/gms/common/api/Api;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzpz;->wp:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzpz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/internal/zzpz",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpz;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzpz;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzpz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz;->tv:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz;->tv:Lcom/google/android/gms/common/api/Api;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz;->vw:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpz;->wp:I

    return v0
.end method

.method public zzaqj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz;->tv:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
