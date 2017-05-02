.class public Lcom/amap/api/maps/model/Poi;
.super Ljava/lang/Object;
.source "Poi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PoiCreator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/amap/api/maps/model/LatLng;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/PoiCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PoiCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/Poi;->CREATOR:Lcom/amap/api/maps/model/PoiCreator;

    return-void
.end method

