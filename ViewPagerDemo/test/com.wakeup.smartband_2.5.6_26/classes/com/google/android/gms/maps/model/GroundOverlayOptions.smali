.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzc;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private akB:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private amD:F

.field private amE:Z

.field private amF:Z

.field private amH:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private amI:Lcom/google/android/gms/maps/model/LatLng;

.field private amJ:F

.field private amK:F

.field private amL:F

.field private amM:F

.field private amN:F

.field private amz:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzc;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amE:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amL:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amM:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amN:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amF:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .registers 16

    const/high16 v1, 0x3f000000

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amE:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amL:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amM:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amN:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amF:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amH:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amI:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amJ:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amK:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->akB:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amz:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amD:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amE:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amL:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amM:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amN:F

    iput-boolean p13, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amF:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amI:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amJ:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amK:F

    return-object p0
.end method


# virtual methods
.method public anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amM:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amN:F

    return-object p0
.end method

.method public bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/high16 v1, 0x43b40000

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amz:F

    return-object p0
.end method

.method public clickable(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amF:Z

    return-object p0
.end method

.method public getAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amM:F

    return v0
.end method

.method public getAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amN:F

    return v0
.end method

.method public getBearing()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amz:F

    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->akB:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amK:F

    return v0
.end method

.method public getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amH:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amI:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amL:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->mVersionCode:I

    return v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amJ:F

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amD:F

    return v0
.end method

.method public image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amH:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public isClickable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amF:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amE:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->akB:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_28

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2a

    move v0, v1

    :goto_10
    const-string/jumbo v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2c

    :goto_1b
    const-string/jumbo v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/high16 v0, -0x40800000

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_28
    move v0, v2

    goto :goto_7

    :cond_2a
    move v0, v2

    goto :goto_10

    :cond_2c
    move v1, v2

    goto :goto_1b
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->akB:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_31

    move v0, v1

    :goto_8
    const-string/jumbo v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_33

    move v0, v1

    :goto_11
    const-string/jumbo v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_35

    move v0, v1

    :goto_1c
    const-string/jumbo v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_37

    :goto_26
    const-string/jumbo v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_31
    move v0, v2

    goto :goto_8

    :cond_33
    move v0, v2

    goto :goto_11

    :cond_35
    move v0, v2

    goto :goto_1c

    :cond_37
    move v1, v2

    goto :goto_26
.end method

.method public positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amI:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amI:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Position has already been set using position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->akB:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_15

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amL:F

    return-object p0

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amE:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzc;->zza(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amD:F

    return-object p0
.end method

.method zzbsh()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->amH:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzbrh()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
