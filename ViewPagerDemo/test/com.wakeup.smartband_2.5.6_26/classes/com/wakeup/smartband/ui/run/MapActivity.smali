.class public Lcom/wakeup/smartband/ui/run/MapActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MapActivity.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
.implements Lcom/amap/api/maps/LocationSource;


# static fields
.field public static final REQUEST_CODE_LOCATION:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "Activity"

.field public static distance_gaode:F


# instance fields
.field private DbHepler:Lcom/wakeup/smartband/db/DbAdapter;

.field private aMap:Lcom/amap/api/maps/AMap;

.field private aversnr:I

.field cv_rssi:Lcom/wakeup/smartband/ui/widget/view/GpsRssiView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b7
    .end annotation
.end field

.field private dev:I

.field private deviation:F

.field private endtime:J

.field public gpsCount:I

.field private gpsSatellites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private lastLatlng:Lcom/amap/api/maps/model/LatLng;

.field private listener:Landroid/location/GpsStatus$Listener;

.field ll_sport_info:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00bb
    .end annotation
.end field

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

.field private mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

.field private mPolyoptions:Lcom/amap/api/maps/model/PolylineOptions;

.field private mapView:Lcom/amap/api/maps/MapView;

.field private mlocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private now_location:Lcom/amap/api/maps/model/LatLng;

.field private record:Lcom/wakeup/smartband/bean/PathRecord;

.field private recordfragment:Lcom/wakeup/smartband/ui/fragment/RecordFragment;

.field rl_map_top:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b2
    .end annotation
.end field

.field rl_time_info:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00c1
    .end annotation
.end field

.field show_run:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b8
    .end annotation
.end field

.field public snrsum:I

.field private starttime:J

.field private time:Ljava/lang/String;

.field private totaltime:J

.field tv_distance2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b3
    .end annotation
.end field

.field tv_distance3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00bc
    .end annotation
.end field

.field tv_expend:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00c0
    .end annotation
.end field

.field tv_km:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b4
    .end annotation
.end field

.field tv_km2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00bd
    .end annotation
.end field

.field tv_speed3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00bf
    .end annotation
.end field

.field tv_time2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b5
    .end annotation
.end field

.field tv_time3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00be
    .end annotation
.end field

.field tv_time_info:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

