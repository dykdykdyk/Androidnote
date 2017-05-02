.class public final Lcom/amap/api/maps/model/VisibleRegion;
.super Ljava/lang/Object;
.source "VisibleRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/VisibleRegionCreator;


# instance fields
.field private final a:I

.field public final farLeft:Lcom/amap/api/maps/model/LatLng;

.field public final farRight:Lcom/amap/api/maps/model/LatLng;

.field public final latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

.field public final nearLeft:Lcom/amap/api/maps/model/LatLng;

.field public final nearRight:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps/model/VisibleRegionCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/VisibleRegionCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/VisibleRegion;->CREATOR:Lcom/amap/api/maps/model/VisibleRegionCreator;

    return-void
.end method

