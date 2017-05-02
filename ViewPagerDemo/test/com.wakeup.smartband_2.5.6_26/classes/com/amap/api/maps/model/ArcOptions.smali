.class public final Lcom/amap/api/maps/model/ArcOptions;
.super Ljava/lang/Object;
.source "ArcOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/ArcOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:Lcom/amap/api/maps/model/LatLng;

.field private d:Lcom/amap/api/maps/model/LatLng;

.field private e:F

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/amap/api/maps/model/ArcOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/ArcOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/ArcOptions;->CREATOR:Lcom/amap/api/maps/model/ArcOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

