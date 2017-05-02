.class public Lcom/google/android/gms/internal/zzqn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqn$zzd;,
        Lcom/google/android/gms/internal/zzqn$zza;,
        Lcom/google/android/gms/internal/zzqn$zze;,
        Lcom/google/android/gms/internal/zzqn$zzc;,
        Lcom/google/android/gms/internal/zzqn$zzb;,
        Lcom/google/android/gms/internal/zzqn$zzf;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final vQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;"
        }
    .end annotation
.end field

.field private xA:Z

.field private final xB:Lcom/google/android/gms/common/internal/zzh;

.field private final xC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final xf:Ljava/util/concurrent/locks/Lock;

.field private final xk:Lcom/google/android/gms/internal/zzqr;

.field private final xn:Lcom/google/android/gms/common/zzc;

.field private xo:Lcom/google/android/gms/common/ConnectionResult;

.field private xp:I

.field private xq:I

.field private xr:I

.field private final xs:Landroid/os/Bundle;

.field private final xt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private xu:Lcom/google/android/gms/internal/zzwz;

.field private xv:I

.field private xw:Z

.field private xx:Z

.field private xy:Lcom/google/android/gms/common/internal/zzr;

.field private xz:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqr;Lcom/google/android/gms/common/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqr;",
            "Lcom/google/android/gms/common/internal/zzh;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/zzc;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwz;",
            "Lcom/google/android/gms/internal/zzxa;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xq:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xs:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xt:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xD:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn;->xC:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqn;->xn:Lcom/google/android/gms/common/zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqn;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqn;->xf:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqn;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqn;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzfr(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->zzave()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->zzcdl()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzave()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_51

    const-string/jumbo v0, "GoogleApiClientConnecting"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7

    :cond_51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqn;->xx:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzavd()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xy:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzavf()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqn;->xz:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzavg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xA:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzark()V

    goto :goto_7

    :cond_6a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarn()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzark()V

    goto :goto_7

    :cond_77
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method private zza(IILcom/google/android/gms/common/ConnectionResult;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_b

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzqn;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xo:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzqn;->xp:I

    if-ge p1, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqn;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zzfr(I)Z

    move-result v0

    return v0
.end method

.method private zzarj()Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    if-lez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    if-gez v1, :cond_38

    const-string/jumbo v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqp;->zzarv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GoogleApiClientConnecting"

    const-string/jumbo v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xo:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget v2, p0, Lcom/google/android/gms/internal/zzqn;->xp:I

    iput v2, v1, Lcom/google/android/gms/internal/zzqr;->yo:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xo:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_48
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private zzark()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xx:Z

    if-eqz v0, :cond_4

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarl()V

    goto :goto_4
.end method

.method private zzarl()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarj()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarm()V

    goto :goto_1e

    :cond_3e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xD:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzqs;->zzarz()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzqn$zzc;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzqn$zzc;-><init>(Lcom/google/android/gms/internal/zzqn;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    return-void
.end method

.method private zzarm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqr;->zzarx()V

    invoke-static {}, Lcom/google/android/gms/internal/zzqs;->zzarz()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqn$1;-><init>(Lcom/google/android/gms/internal/zzqn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xz:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xy:Lcom/google/android/gms/common/internal/zzr;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqn;->xA:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzwz;->zza(Lcom/google/android/gms/common/internal/zzr;Z)V

    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzbq(Z)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_32

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xs:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqr;->yp:Lcom/google/android/gms/internal/zzqy$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqy$zza;->zzn(Landroid/os/Bundle;)V

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xs:Landroid/os/Bundle;

    goto :goto_55
.end method

.method private zzarn()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqp;->xX:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_39
    return-void
.end method

.method private zzaro()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private zzarp()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzh;->zzaug()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzh;->zzaui()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzh$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzh$zza;->hm:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_48
    move-object v0, v1

    goto :goto_8
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/common/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xn:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzapm()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/zzqn;->zza(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn;->xo:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xp:I

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private zzbq(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwz;->zzcda()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwz;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xy:Lcom/google/android/gms/common/internal/zzr;

    :cond_1b
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqn;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xf:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/internal/zzqr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xn:Lcom/google/android/gms/common/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zzc;->zzfl(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/internal/zzwz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xv:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xv:I

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private zzfr(I)Z
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->xq:I

    if-eq v0, p1, :cond_b4

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqp;->zzarv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected callback in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "mRemainingConnections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzqn;->xq:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqn;->zzfs(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zzfs(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "GoogleApiClient connecting is in step "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_b3
    return v0

    :cond_b4
    const/4 v0, 0x1

    goto :goto_b3
.end method

.method private zzfs(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_6

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqn;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzaro()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzbq(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqr;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yp:Lcom/google/android/gms/internal/zzqy$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqy$zza;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/common/internal/zzr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xy:Lcom/google/android/gms/common/internal/zzr;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzqn;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarn()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzqn;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzark()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzqn;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarj()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public begin()V
    .registers 12

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->yl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/zzqn;->xo:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/zzqn;->xq:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xv:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqn;->xx:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqn;->xz:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xC:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapm()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v2

    if-ne v2, v5, :cond_7c

    move v2, v5

    :goto_58
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzahd()Z

    move-result v3

    if-eqz v3, :cond_72

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    iget v3, p0, Lcom/google/android/gms/internal/zzqn;->xv:I

    if-ge v8, v3, :cond_67

    iput v8, p0, Lcom/google/android/gms/internal/zzqn;->xv:I

    :cond_67
    if-eqz v8, :cond_72

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqn;->xt:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzapp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_72
    new-instance v3, Lcom/google/android/gms/internal/zzqn$zza;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/zzqn$zza;-><init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/api/Api;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_27

    :cond_7c
    move v2, v4

    goto :goto_58

    :cond_7e
    if-eqz v3, :cond_82

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    :cond_82
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->xw:Z

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqp;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzh;->zzc(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/zzqn$zze;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/zzqn$zze;-><init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/internal/zzqn$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->vQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqp;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqn;->xB:Lcom/google/android/gms/common/internal/zzh;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzh;->zzaum()Lcom/google/android/gms/internal/zzxa;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzh;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzwz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xu:Lcom/google/android/gms/internal/zzwz;

    :cond_b9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->xW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzqn;->xr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xD:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzqs;->zzarz()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqn$zzb;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/zzqn$zzb;-><init>(Lcom/google/android/gms/internal/zzqn;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .registers 1

    return-void
.end method

.method public disconnect()Z
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzaro()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzqn;->zzbq(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqr;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzfr(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xs:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarj()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarm()V

    goto :goto_7
.end method

.method public onConnectionSuspended(I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;->zzfr(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqn;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarj()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzarm()V

    goto :goto_7
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->xk:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqr;->wV:Lcom/google/android/gms/internal/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp;->xQ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqc$zza;)Lcom/google/android/gms/internal/zzqc$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqc$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
