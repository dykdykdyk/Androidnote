.class public final Lcom/amap/api/maps/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/CameraPositionCreator;


# instance fields
.field public final bearing:F

.field public final isAbroad:Z

.field public final target:Lcom/amap/api/maps/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/maps/model/CameraPositionCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CameraPositionCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CameraPosition;->CREATOR:Lcom/amap/api/maps/model/CameraPositionCreator;

    return-void
.end method

