.class public Lcom/wakeup/smartband/ui/run/GoogleMapShowActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GoogleMapShowActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
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

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

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

