.class public final Lcom/google/android/gms/internal/zzpy$zzd;
.super Lcom/google/android/gms/internal/zzpy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzpy;"
    }
.end annotation


# static fields
.field private static final wm:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final wh:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private final wl:Lcom/google/android/gms/internal/zzro;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzro",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string/jumbo v2, "Connection to Google Play services was lost while executing the API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzpy$zzd;->wm:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/zzro;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/gms/internal/zzro",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpy;-><init>(II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wl:Lcom/google/android/gms/internal/zzro;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wl:Lcom/google/android/gms/internal/zzro;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzro;->zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_f

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzpy$zzd;->wm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpy$zzd;->zzx(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    :catch_f
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/zzpy$zzd;->wm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpy$zzd;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_7
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/firebase/FirebaseException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzd;->wh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_16
.end method
