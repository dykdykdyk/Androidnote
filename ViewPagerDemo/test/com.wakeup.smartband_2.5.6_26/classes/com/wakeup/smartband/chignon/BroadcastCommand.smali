.class public Lcom/wakeup/smartband/chignon/BroadcastCommand;
.super Ljava/lang/Object;
.source "BroadcastCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/chignon/BroadcastCommand$SwingType;,
        Lcom/wakeup/smartband/chignon/BroadcastCommand$PDRType;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_SEND_REQUEST_DENIED:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_BLE_SEND_REQUEST_DENIED"

.field public static final ACTION_BLE_STATUS_RESULT:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_BLE_STATUS_RESULT"

.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_DATA_AVAILABLE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "co.megachps.chignonmonitor.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final BLE_RECEIVE_DATA:I = 0xa

.field public static final BLE_SEND_DATA:I = 0x2

.field public static final BLE_STATUS_CHECK:I = 0x0

.field public static final BLE_STATUS_RESULT:I = 0x1

.field public static final CALIBRATION_END:I = 0x3

.field public static final CONNECT_TYPE:I = 0x7f

.field public static final DATA_RECEIVED_FROM_ACTIVITY:Ljava/lang/String; = "co.megachps.chignonmonitor.DATA_RECEIVED_FROM_ACTIVITY"

.field public static final DEVICE_DOES_NOT_SUPPORT_UART:Ljava/lang/String; = "co.megachps.chignonmonitor.DEVICE_DOES_NOT_SUPPORT_UART"

.field public static final ERASE_END:I = 0x6

.field public static final EXTRA_DATA:Ljava/lang/String; = "co.megachps.chignonmonitor.EXTRA_DATA"

.field public static final LOGSEND_END:I = 0x7

.field public static final LOG_DETAIL:I = 0x9

.field public static final RESPONSE_GEOFENCING_PARAMETER_FAIL:I = 0x9

.field public static final RESPONSE_GEOFENCING_PARAMETER_SUCCESS:I = 0x8

.field public static final RESPONSE_GEOFENCING_RESET_FAIL:I = 0xb

.field public static final RESPONSE_GEOFENCING_RESET_SUCCESS:I = 0xa

.field public static final RESULT_ACK:I = 0xd

.field public static final RESULT_NAK:I = 0xe

.field public static final SEND_FW_NG:I = 0x10

.field public static final SEND_FW_OK:I = 0xf

.field public static final SETITNG_DATA:I = 0x8

.field public static final STATE_STARTED:I = 0x4

.field public static final STATE_STOPPED:I = 0x5

.field public static final SWING_CALI_END:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

