.class public final Lcom/google/android/gms/maps/model/Tile;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzo;


# instance fields
.field public final data:[B

.field public final height:I

.field private final mVersionCode:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/zzo;

    return-void
.end method

.method constructor <init>(III[B)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I

    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I

    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->data:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzo;->zza(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    return-void
.end method
