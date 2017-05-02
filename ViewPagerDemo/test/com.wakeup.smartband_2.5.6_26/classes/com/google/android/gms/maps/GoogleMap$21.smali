.class Lcom/google/android/gms/maps/GoogleMap$21;
.super Lcom/google/android/gms/maps/internal/zzg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic alh:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$21;->akL:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$21;->alh:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzg$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMoveCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$21;->alh:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;->onCameraMoveCanceled()V

    return-void
.end method
