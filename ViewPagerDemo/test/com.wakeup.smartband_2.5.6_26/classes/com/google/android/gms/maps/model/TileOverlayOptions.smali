.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzp;


# instance fields
.field private amD:F

.field private amE:Z

.field private amL:F

.field private ank:Lcom/google/android/gms/maps/model/internal/zzi;

.field private anl:Lcom/google/android/gms/maps/model/TileProvider;

.field private anm:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzp;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anm:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amL:F

    iput v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZF)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anm:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amL:F

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/zzi$zza;->zzjk(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ank:Lcom/google/android/gms/maps/model/internal/zzi;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ank:Lcom/google/android/gms/maps/model/internal/zzi;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anl:Lcom/google/android/gms/maps/model/TileProvider;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amE:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amD:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anm:Z

    iput p6, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amL:F

    return-void

    :cond_23
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    goto :goto_18
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ank:Lcom/google/android/gms/maps/model/internal/zzi;

    return-object v0
.end method


# virtual methods
.method public fadeIn(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anm:Z

    return-object p0
.end method

.method public getFadeIn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anm:Z

    return v0
.end method

.method public getTileProvider()Lcom/google/android/gms/maps/model/TileProvider;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anl:Lcom/google/android/gms/maps/model/TileProvider;

    return-object v0
.end method

.method public getTransparency()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amL:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amD:F

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amE:Z

    return v0
.end method

.method public tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anl:Lcom/google/android/gms/maps/model/TileProvider;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->anl:Lcom/google/android/gms/maps/model/TileProvider;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ank:Lcom/google/android/gms/maps/model/internal/zzi;

    return-object p0

    :cond_a
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V

    goto :goto_7
.end method

.method public transparency(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
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

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amL:F

    return-object p0

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amE:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzp;->zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->amD:F

    return-object p0
.end method

.method zzbsl()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ank:Lcom/google/android/gms/maps/model/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
