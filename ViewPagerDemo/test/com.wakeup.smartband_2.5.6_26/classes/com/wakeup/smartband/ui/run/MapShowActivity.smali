.class public Lcom/wakeup/smartband/ui/run/MapShowActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "MapShowActivity.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps/AMap$OnMapScreenShotListener;


# instance fields
.field private aMap:Lcom/amap/api/maps/AMap;

.field ll_sport_info:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00bb
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mMarker:Lcom/amap/api/maps/model/Marker;

.field private mapView:Lcom/amap/api/maps/MapView;

.field private mrecord:Lcom/wakeup/smartband/bean/PathRecord;

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
    .registers 1

