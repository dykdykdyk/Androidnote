.class public Lcom/wakeup/smartband/ui/device/DeviceListActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/device/DeviceListActivity$ViewHolder;,
        Lcom/wakeup/smartband/ui/device/DeviceListActivity$DeviceListAdapter;,
        Lcom/wakeup/smartband/ui/device/DeviceListActivity$ScanTask;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_LOCATION:I = 0x7b

.field private static final REQUEST_ENABLE_BT:I = 0x2

.field private static final REQUEST_LOCATION_SERVICE:I = 0x1c8

.field private static final SCAN_PERIOD:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "DeviceListActivity"


# instance fields
.field private final BLEStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field devicelist_iv_band:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0111
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private iv_device_connecting:Landroid/widget/ImageView;

.field private iv_rssi:Landroid/widget/ImageView;

.field ll_linkinga:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010f
    .end annotation
.end field

.field ll_linkingb:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0110
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentClickedPosition:I

.field mDevRssiValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListAdapter:Lcom/wakeup/smartband/ui/device/DeviceListActivity$DeviceListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field mLv_devices:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0113
    .end annotation
.end field

.field private mScanTask:Lcom/wakeup/smartband/ui/device/DeviceListActivity$ScanTask;

.field private mService:Lcom/wakeup/smartband/ble_service/BleService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field mTv_device_hint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0112
    .end annotation
.end field

.field tv_nofind_device:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0114
    .end annotation
.end field

.field tv_search:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010e
    .end annotation
.end field

.field viewHolder:Lcom/wakeup/smartband/ui/device/DeviceListActivity$ViewHolder;


# direct methods
.method public constructor <init>()V
    .registers 3

