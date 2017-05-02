.class public Lcom/wakeup/smartband/ui/run/RunActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "RunActivity.java"


# static fields
.field private static final DB_TABLE_PLACES:Ljava/lang/String; = "record"

.field public static final REQUEST_CODE_LOCATION:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "RunActivity"


# instance fields
.field private DbHepler:Lcom/wakeup/smartband/db/DbAdapter;

.field commonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field cv_rssi:Lcom/wakeup/smartband/ui/widget/view/GpsRssiView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b7
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/wakeup/smartband/db/DbAdapter$DatabaseHelper;

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

.field private listdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/PathRecord;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/location/GpsStatus$Listener;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private msp:Landroid/text/SpannableString;

.field private pu:Landroid/widget/PopupWindow;

.field private total_dis:F

.field tv_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0154
    .end annotation
.end field

.field tv_gps0:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0157
    .end annotation
.end field

.field tv_km:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00b4
    .end annotation
.end field

.field tv_length:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0156
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

