.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x12

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x11

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x15

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x16

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0x13

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0x14

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 138
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    .line 162
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    .line 134
    nop

    :array_1a
    .array-data 4
        0x7f010077
        0x7f010078
        0x7f010079
    .end array-data

    .line 138
    :array_24
    .array-data 4
        0x7f01007a
        0x7f01007b
        0x7f01007c
        0x7f01007d
        0x7f01007e
        0x7f01007f
        0x7f010080
        0x7f010081
        0x7f010082
        0x7f010083
        0x7f010084
        0x7f010085
        0x7f010086
        0x7f010087
        0x7f010088
        0x7f010089
        0x7f01008a
        0x7f01008b
        0x7f01008c
        0x7f01008d
        0x7f01008e
        0x7f01008f
        0x7f010090
    .end array-data

    .line 162
    :array_56
    .array-data 4
        0x7f0100e5
        0x7f0100e6
        0x7f0100e7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
