.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzg;


# instance fields
.field private HP:Ljava/lang/String;

.field private amD:F

.field private amE:Z

.field private amM:F

.field private amN:F

.field private amW:Ljava/lang/String;

.field private amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private amY:Z

.field private amZ:Z

.field private ame:Lcom/google/android/gms/maps/model/LatLng;

.field private ana:F

.field private anb:F

.field private anc:F

.field private mAlpha:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzg;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000

    const/high16 v2, 0x3f000000

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amM:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amN:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amE:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amZ:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ana:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anb:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anc:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .registers 19

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amM:F

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amN:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amE:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amZ:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ana:F

    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anb:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anc:F

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ame:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HP:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amW:Ljava/lang/String;

    if-nez p5, :cond_47

    const/4 v1, 0x0

    :goto_2a
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amM:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amN:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amY:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amE:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amZ:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ana:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anb:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anc:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amD:F

    return-void

    :cond_47
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    goto :goto_2a
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amM:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amN:F

    return-object p0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amY:Z

    return-object p0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amZ:Z

    return-object p0
.end method

.method public getAlpha()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amM:F

    return v0
.end method

.method public getAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amN:F

    return v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anb:F

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anc:F

    return v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ame:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getRotation()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ana:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amW:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HP:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amD:F

    return v0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anb:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->anc:F

    return-object p0
.end method

.method public isDraggable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amY:Z

    return v0
.end method

.method public isFlat()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amZ:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amE:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 4
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "latlng cannot be null - a position is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ame:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ana:F

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amW:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HP:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amE:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzg;->zza(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amD:F

    return-object p0
.end method

.method zzbsj()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->amX:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzbrh()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method
