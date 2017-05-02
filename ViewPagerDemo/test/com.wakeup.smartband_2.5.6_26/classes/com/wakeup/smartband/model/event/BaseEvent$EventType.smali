.class public final enum Lcom/wakeup/smartband/model/event/BaseEvent$EventType;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/model/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wakeup/smartband/model/event/BaseEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum AUTO_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum AUTO_MEASURE_END:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum AUTO_MEASURE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BATTERY_PERCENT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOD_PRESSURE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOD_PRESSURE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOD_PRESSURE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOD_PRESSURE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOTH_PRESSURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOTH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BLOOTH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BO_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BREATH:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BREATH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum BREATH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum CAHNGE_INFO:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum CLEAR_DATA_SUCCESS:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum DB_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum GPS_COUNT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEARTRATE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEARTRATE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEARTRATE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEARTRATE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEART_RATE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEART_RATE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HEART_RATE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum HR_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum LOGIN:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum LOGINOUT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum MOOD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum MOOD_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum MOOD_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum NEXT_MEASURE_TIME:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum ONE_KEY_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum OTA_UPDATE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum PAUSE_OR_CONTINUE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum REGISTER:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum RUN_RECORD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum RUN_TIMING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum STEP:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum STEP_SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum SYNCING_DATA:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum TIRED:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum TIRED_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum TIRED_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum UNBIND_DEVICE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum UPDATE_DISTANCE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

.field public static final enum mEventType:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->LOGIN:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 38
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "LOGINOUT"

    invoke-direct {v0, v1, v4}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->LOGINOUT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 39
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "REGISTER"

    invoke-direct {v0, v1, v5}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->REGISTER:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 40
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "CAHNGE_INFO"

    invoke-direct {v0, v1, v6}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->CAHNGE_INFO:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 41
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOTH_PRESSURE_VISIBLE"

    invoke-direct {v0, v1, v7}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 42
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOTH_PRESSURE_GONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 43
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BREATH_PRESSURE_VISIBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 44
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BREATH_PRESSURE_GONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 45
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEART_RATE_VISIBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 46
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEART_RATE_GONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 47
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "MOOD_VISIBLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 48
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "MOOD_GONE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 49
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "TIRED_VISIBLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 50
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "TIRED_GONE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 53
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "STEP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->STEP:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 54
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOTH_PRESSURE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 55
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BREATH"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 56
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEART_RATE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 57
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "TIRED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 58
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "MOOD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 60
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "NEXT_MEASURE_TIME"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->NEXT_MEASURE_TIME:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 62
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEARTRATE_CHECKING"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 63
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEARTRATE_CANCEL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 64
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOD_PRESSURE_CHECKING"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 65
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOD_PRESSURE_CANCEL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 66
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "AUTO_MEASURE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 67
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEARTRATE_DISABLE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 68
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HEARTRATE_ENABLE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 69
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOD_PRESSURE_DISABLE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 70
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BLOOD_PRESSURE_ENABLE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 72
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BATTERY_PERCENT"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BATTERY_PERCENT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 74
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "UNBIND_DEVICE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->UNBIND_DEVICE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 76
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "DB_CHANGE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DB_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 79
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "HR_CHANGE"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HR_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 80
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BO_CHANGE"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BO_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 81
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BP_CHANGE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 84
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "ONE_KEY_MEASURE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ONE_KEY_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 86
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "AUTO_MEASURE_START"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 87
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "AUTO_MEASURE_END"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE_END:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 89
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "OTA_UPDATE_START"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->OTA_UPDATE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 90
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "BAND_VERSION_GOT"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 92
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "mEventType"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->mEventType:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "STEP_SLEEP_CHANGE"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->STEP_SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 93
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "RUN_RECORD"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->RUN_RECORD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 94
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "PAUSE_OR_CONTINUE"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->PAUSE_OR_CONTINUE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 95
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "UPDATE_DISTANCE"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->UPDATE_DISTANCE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 96
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "RUN_TIMING"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->RUN_TIMING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 97
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "GPS_COUNT"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->GPS_COUNT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 98
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "DEVICE_CONNECT_CHANGE"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 99
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "SLEEP_CHANGE"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 101
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "CLEAR_DATA_SUCCESS"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->CLEAR_DATA_SUCCESS:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 103
    new-instance v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    const-string/jumbo v1, "SYNCING_DATA"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->SYNCING_DATA:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    .line 36
    const/16 v0, 0x34

    new-array v0, v0, [Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->LOGIN:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->LOGINOUT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->REGISTER:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->CAHNGE_INFO:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH_PRESSURE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH_PRESSURE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED_VISIBLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED_GONE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->STEP:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOTH_PRESSURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BREATH:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEART_RATE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->TIRED:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->MOOD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->NEXT_MEASURE_TIME:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_CHECKING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_CANCEL:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HEARTRATE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_DISABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BLOOD_PRESSURE_ENABLE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BATTERY_PERCENT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->UNBIND_DEVICE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DB_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->HR_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BO_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ONE_KEY_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->AUTO_MEASURE_END:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->OTA_UPDATE_START:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->mEventType:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->STEP_SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->RUN_RECORD:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->PAUSE_OR_CONTINUE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->UPDATE_DISTANCE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->RUN_TIMING:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->GPS_COUNT:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->SLEEP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->CLEAR_DATA_SUCCESS:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->SYNCING_DATA:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->$VALUES:[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wakeup/smartband/model/event/BaseEvent$EventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->$VALUES:[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v0}, [Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    return-object v0
.end method
