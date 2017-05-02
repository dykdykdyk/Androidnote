.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private amw:Lcom/google/android/gms/maps/model/LatLng;

.field private amx:F

.field private amy:F

.field private amz:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amw:Lcom/google/android/gms/maps/model/LatLng;

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amx:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amy:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amz:F

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amz:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 6

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amw:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amx:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amy:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amz:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amw:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amy:F

    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->amx:F

    return-object p0
.end method
