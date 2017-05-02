.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzj;


# instance fields
.field private amD:F

.field private amE:Z

.field private amF:Z

.field private amJ:F

.field private final ane:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private ang:Z

.field private mColor:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzj;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amJ:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amD:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ang:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amF:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZZ)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amJ:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amD:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ang:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amF:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amJ:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amD:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amE:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ang:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amF:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    return-object p0
.end method

.method public clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amF:Z

    return-object p0
.end method

.method public color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    return-object p0
.end method

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ang:Z

    return-object p0
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ane:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mVersionCode:I

    return v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amJ:F

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amD:F

    return v0
.end method

.method public isClickable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amF:Z

    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ang:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amE:Z

    return v0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amE:Z

    return-object p0
.end method

.method public width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amJ:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzj;->zza(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->amD:F

    return-object p0
.end method
