.class public Lcom/autonavi/amap/mapcore/MapCore;
.super Ljava/lang/Object;
.source "MapCore.java"


# static fields
.field public static final AM_DATA_BMP_BASEMAP:I = 0x2

.field public static final AM_DATA_GEO_BUILDING:I = 0x1

.field public static final AM_DATA_GUIDE:I = 0xb

.field public static final AM_DATA_INDOOR:I = 0xa

.field public static final AM_DATA_MODEL:I = 0x6

.field public static final AM_DATA_POI:I = 0x8

.field public static final AM_DATA_ROADMAP:I = 0x0

.field public static final AM_DATA_SATELLITE:I = 0x3

.field public static final AM_DATA_SCENIC_WIDGET:I = 0x65

.field public static final AM_DATA_SCREEN:I = 0x5

.field public static final AM_DATA_STANDARD:I = 0x7

.field public static final AM_DATA_VEC_TMC:I = 0x4

.field public static final AM_DATA_VERSION:I = 0x9

.field public static final MAPRENDER_BASEMAPBEGIN:I = 0x1

.field public static final MAPRENDER_BUILDINGBEGIN:I = 0x2

.field public static final MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER:I = 0x3e7

.field public static final MAPRENDER_ENTER:I = 0x0

.field public static final MAPRENDER_GRID_CAN_FILL:I = 0xb

.field public static final MAPRENDER_LABELSBEGIN:I = 0x3

.field public static final MAPRENDER_LABELSEND:I = 0x4

.field public static final MAPRENDER_NOMORENEEDRENDER:I = 0x6

.field public static final MAPRENDER_ORTHOPROJECTION:I = 0x7

.field public static final MAPRENDER_RENDEROVER:I = 0x5

.field public static final TEXTURE_BACKGROUND:I = 0x1

.field public static final TEXTURE_ICON:I = 0x0

.field public static final TEXTURE_RAILWAY:I = 0x8

.field public static final TEXTURE_ROADARROW:I = 0x2

.field public static final TEXTURE_ROADROUND:I = 0x3

.field public static final TEXTURE_TMC_BLACK:I = 0x7

.field public static final TEXTURE_TMC_GREEN:I = 0x6

.field public static final TEXTURE_TMC_RED:I = 0x4

.field public static final TEXTURE_TMC_YELLOW:I = 0x5


# instance fields
.field mContext:Landroid/content/Context;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

.field native_instance:J

.field private textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

.field tmp_3072bytes_data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v0, "gdinamapv4sdk752"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 69
    :goto_c
    return-void

    .line 66
    :catch_d
    move-exception v0

    goto :goto_c
.end method

