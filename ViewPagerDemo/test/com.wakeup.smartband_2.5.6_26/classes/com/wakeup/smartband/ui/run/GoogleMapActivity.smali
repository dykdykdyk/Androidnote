.class public Lcom/wakeup/smartband/ui/run/GoogleMapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GoogleMapActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field public static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x1388L

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x1

.field public static final REQUEST_CODE_LOCATION:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "Activity"

.field public static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x2710L

.field public static distance_google:F

.field public static gpsCount:I

.field public static snrsum:I


# instance fields
.field private DbHepler:Lcom/wakeup/smartband/db/DbAdapter;

.field private aversnr:I

.field cv_rssi:Lcom/wakeup/smartband/ui/widget/view/GpsRssiView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b7
    .end annotation
.end field

.field private endtime:J

.field private gaoDeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private googleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

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

.field protected mCurrentLocation:Landroid/location/Location;

.field protected mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected mLastUpdateTime:Ljava/lang/String;

.field private mLatlng:Lcom/google/android/gms/maps/model/LatLng;

.field protected mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mPermissionDenied:Z

.field private mUiSettings:Lcom/google/android/gms/maps/UiSettings;

.field protected polylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

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

.field shareview:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b0
    .end annotation
.end field

.field show_run:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b8
    .end annotation
.end field

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

