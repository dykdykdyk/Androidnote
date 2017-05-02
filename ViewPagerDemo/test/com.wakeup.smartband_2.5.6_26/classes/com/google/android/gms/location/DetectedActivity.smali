.class public Lcom/google/android/gms/location/DetectedActivity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

.field public static final IN_VEHICLE:I = 0x0

.field public static final ON_BICYCLE:I = 0x1

.field public static final ON_FOOT:I = 0x2

.field public static final RUNNING:I = 0x8

.field public static final STILL:I = 0x3

.field public static final TILTING:I = 0x5

.field public static final UNKNOWN:I = 0x4

.field public static final WALKING:I = 0x7

.field public static final agO:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final agP:[I

.field public static final agQ:[I


# instance fields
.field agR:I

.field agS:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/DetectedActivity$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivity$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->agO:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->agP:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->agQ:[I

    new-instance v0, Lcom/google/android/gms/location/DetectedActivityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

    return-void

    :array_20
    .array-data 4
        0x9
        0xa
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    return-void
.end method

.method private zzty(I)I
    .registers 3

    const/16 v0, 0xf

    if-le p1, v0, :cond_5

    const/4 p1, 0x4

    :cond_5
    return p1
.end method

.method public static zztz(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string/jumbo v0, "IN_VEHICLE"

    goto :goto_7

    :pswitch_c
    const-string/jumbo v0, "ON_BICYCLE"

    goto :goto_7

    :pswitch_10
    const-string/jumbo v0, "ON_FOOT"

    goto :goto_7

    :pswitch_14
    const-string/jumbo v0, "STILL"

    goto :goto_7

    :pswitch_18
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_7

    :pswitch_1c
    const-string/jumbo v0, "TILTING"

    goto :goto_7

    :pswitch_20
    const-string/jumbo v0, "WALKING"

    goto :goto_7

    :pswitch_24
    const-string/jumbo v0, "RUNNING"

    goto :goto_7

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_3
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/location/DetectedActivity;

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public getConfidence()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->zzty(I)I

    move-result v0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->agR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/DetectedActivity;->zztz(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->agS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "DetectedActivity [type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", confidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/DetectedActivityCreator;->zza(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method
