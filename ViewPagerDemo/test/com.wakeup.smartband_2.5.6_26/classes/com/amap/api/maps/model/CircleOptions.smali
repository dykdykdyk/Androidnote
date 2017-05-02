.class public final Lcom/amap/api/maps/model/CircleOptions;
.super Ljava/lang/Object;
.source "CircleOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/CircleOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/amap/api/maps/model/CircleOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CircleOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CircleOptions;->CREATOR:Lcom/amap/api/maps/model/CircleOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

