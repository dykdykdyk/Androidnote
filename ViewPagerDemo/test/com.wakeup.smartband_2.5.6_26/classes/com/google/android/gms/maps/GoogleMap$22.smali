.class Lcom/google/android/gms/maps/GoogleMap$22;
.super Lcom/google/android/gms/maps/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic ali:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$22;->akL:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$22;->ali:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraIdle()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$22;->ali:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;->onCameraIdle()V

    return-void
.end method
