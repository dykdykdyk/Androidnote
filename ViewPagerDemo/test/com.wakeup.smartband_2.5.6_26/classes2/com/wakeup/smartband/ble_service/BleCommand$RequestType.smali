.class public Lcom/wakeup/smartband/ble_service/BleCommand$RequestType;
.super Ljava/lang/Object;
.source "BleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ble_service/BleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestType"
.end annotation


# static fields
.field public static final ERASE_SPIFLASH:B = 0x12t

.field public static final EXIT_SENSOR_DUMP:B = 0x6t

.field public static final FRIZZ_RESET:B = 0x1t

.field public static final GET_SENSOR_VERSION:B = 0xft

.field public static final SEND_CHIGNONFW:B = 0x13t

.field public static final SEND_CMD:B = 0x10t

.field public static final SEND_FRIZZFW:B = 0x11t

.field public static final SENSOR_CONTROL:B = 0x0t

.field public static final SET_BLE_TIMER:B = 0x3t

.field public static final SET_HEART_RATE:B = 0x0t

.field public static final SET_LOGGING_MODE:B = 0x2t

.field public static final SET_SAMPLING_FREQUENCY:B = 0x7t

.field public static final SPI_FLASH_PPG_GET_DETAIL:B = 0x47t

.field public static final SPI_FLASH_PPG_SET_BLE:B = 0x45t

.field public static final SPI_FLASH_PPG_SET_DETAIL:B = 0x46t

.field public static final SPI_FLASH_PPG_SET_SAMPLING_START:B = 0x43t

.field public static final SPI_FLASH_PPG_SET_SAMPLING_STOP:B = 0x44t

.field public static final SPI_FLASH_PPG_SET_UART:B = 0x48t

.field public static final SPI_FLASH_SET_BLE:B = 0xbt

.field public static final SPI_FLASH_SET_SAMPLING_START:B = 0x8t

.field public static final SPI_FLASH_SET_SAMPLING_STOP:B = 0x9t

.field public static final SPI_FLASH_SET_UART:B = 0xat

.field public static final START_ALL_ERASE:B = 0xdt

.field public static final START_ERASE:B = 0xct

.field public static final START_HEART_RATE:B = 0x40t

.field public static final START_SENSOR_DUMP:B = 0x4t

.field public static final STOP_HEART_RATE:B = 0x42t

.field public static final STOP_SENSOR_DUMP:B = 0x5t

.field public static final SWING_CALIBRATION_START:B = 0xet


# instance fields
.field final synthetic this$0:Lcom/wakeup/smartband/ble_service/BleCommand;


# direct methods
