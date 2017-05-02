.class Lcom/google/android/gms/maps/GoogleMap$10;
.super Lcom/google/android/gms/maps/internal/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic akU:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akL:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akU:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzr$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akU:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;->onMapLoaded()V

    return-void
.end method
