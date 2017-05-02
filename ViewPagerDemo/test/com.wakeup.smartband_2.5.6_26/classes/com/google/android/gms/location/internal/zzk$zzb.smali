.class Lcom/google/android/gms/location/internal/zzk$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final aic:Lcom/google/android/gms/location/LocationListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzk$zzb;->aic:Lcom/google/android/gms/location/LocationListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzk$zzb;->aic:Lcom/google/android/gms/location/LocationListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    const-string/jumbo v0, "LocationClientHelper"

    const-string/jumbo v1, "unknown message in LocationHandler.handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :pswitch_f
    new-instance v1, Landroid/location/Location;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zzb;->aic:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_e

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method
