.class public final Lcom/amap/api/maps/model/LatLngBounds;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/LatLngBoundsCreator;


# instance fields
.field private final a:I

.field public final northeast:Lcom/amap/api/maps/model/LatLng;

.field public final southwest:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps/model/LatLngBoundsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/LatLngBoundsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/LatLngBounds;->CREATOR:Lcom/amap/api/maps/model/LatLngBoundsCreator;

    return-void
.end method

