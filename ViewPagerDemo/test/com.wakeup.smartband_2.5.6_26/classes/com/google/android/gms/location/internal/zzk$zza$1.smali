.class Lcom/google/android/gms/location/internal/zzk$zza$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzk$zza;-><init>(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahP:Lcom/google/android/gms/location/LocationCallback;

.field final synthetic aib:Lcom/google/android/gms/location/internal/zzk$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzk$zza;Landroid/os/Looper;Lcom/google/android/gms/location/LocationCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzk$zza$1;->aib:Lcom/google/android/gms/location/internal/zzk$zza;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzk$zza$1;->ahP:Lcom/google/android/gms/location/LocationCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zza$1;->ahP:Lcom/google/android/gms/location/LocationCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    goto :goto_5

    :pswitch_10
    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zza$1;->ahP:Lcom/google/android/gms/location/LocationCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationCallback;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
