.class public final Lcom/google/android/gms/maps/model/PointOfInterest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzh;


# instance fields
.field public final latLng:Lcom/google/android/gms/maps/model/LatLng;

.field private final mVersionCode:I

.field public final name:Ljava/lang/String;

.field public final placeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PointOfInterest;->CREATOR:Lcom/google/android/gms/maps/model/zzh;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->placeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/PointOfInterest;-><init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzh;->zza(Lcom/google/android/gms/maps/model/PointOfInterest;Landroid/os/Parcel;I)V

    return-void
.end method
