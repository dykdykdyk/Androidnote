.class public Lcom/amap/api/maps/AMapOptions;
.super Ljava/lang/Object;
.source "AMapOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

.field public static final LOGO_POSITION_BOTTOM_CENTER:I = 0x1

.field public static final LOGO_POSITION_BOTTOM_LEFT:I = 0x0

.field public static final LOGO_POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_BUTTOM:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_CENTER:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/api/maps/model/CameraPosition;

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

