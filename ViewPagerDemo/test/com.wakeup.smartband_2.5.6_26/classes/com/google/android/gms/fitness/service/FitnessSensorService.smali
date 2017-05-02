.class public abstract Lcom/google/android/gms/fitness/service/FitnessSensorService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.google.android.gms.fitness.service.FitnessSensorService"


# instance fields
.field private Ur:Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 8
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string/jumbo v0, "com.google.android.gms.fitness.service.FitnessSensorService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string/jumbo v0, "FitnessSensorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "FitnessSensorService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " received by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService;->Ur:Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_65
    return-object v0

    :cond_66
    const/4 v0, 0x0

    goto :goto_65
.end method

.method public onCreate()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;-><init>(Lcom/google/android/gms/fitness/service/FitnessSensorService;Lcom/google/android/gms/fitness/service/FitnessSensorService$1;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService;->Ur:Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;

    return-void
.end method

.method public abstract onFindDataSources(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onRegister(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;)Z
.end method

.method public abstract onUnregister(Lcom/google/android/gms/fitness/data/DataSource;)Z
.end method

.method protected zzbhj()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxr()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    array-length v2, v1

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_36

    aget-object v3, v1, v0

    const-string/jumbo v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Unauthorized caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
