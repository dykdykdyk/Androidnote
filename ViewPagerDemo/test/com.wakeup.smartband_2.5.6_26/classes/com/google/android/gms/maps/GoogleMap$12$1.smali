.class Lcom/google/android/gms/maps/GoogleMap$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap$12;->activate(Lcom/google/android/gms/maps/internal/zzp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akX:Lcom/google/android/gms/maps/internal/zzp;

.field final synthetic akY:Lcom/google/android/gms/maps/GoogleMap$12;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$12;Lcom/google/android/gms/maps/internal/zzp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$12$1;->akY:Lcom/google/android/gms/maps/GoogleMap$12;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$12$1;->akX:Lcom/google/android/gms/maps/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$12$1;->akX:Lcom/google/android/gms/maps/internal/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/zzp;->zze(Landroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
