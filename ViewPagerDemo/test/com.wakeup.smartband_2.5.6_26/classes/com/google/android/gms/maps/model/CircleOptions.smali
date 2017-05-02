.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzb;


# instance fields
.field private amB:Lcom/google/android/gms/maps/model/LatLng;

.field private amC:D

.field private amD:F

.field private amE:Z

.field private amF:Z

.field private mFillColor:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzb;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amB:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amC:D

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amD:F

    iput-boolean v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amF:Z

    iput v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZZ)V
    .registers 14

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amB:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amC:D

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amD:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amF:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amB:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amC:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amD:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amE:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amF:Z

    return-void
.end method


# virtual methods
.method public center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amB:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amF:Z

    return-object p0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    return-object p0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amB:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    return v0
.end method

.method public getRadius()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amC:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amD:F

    return v0
.end method

.method public isClickable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amF:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amE:Z

    return v0
.end method

.method public radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amC:D

    return-object p0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amE:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzb;->zza(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->amD:F

    return-object p0
.end method
