.class public Lcom/wakeup/smartband/model/ble/GattAttributes;
.super Ljava/lang/Object;
.source "GattAttributes.java"


# static fields
.field public static SMART_BRACELET:Ljava/lang/String;

.field public static SMART_BRACELET_CONF:Ljava/lang/String;

.field public static TEST_UUID:Ljava/lang/String;

.field private static mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->mAttributes:Ljava/util/HashMap;

    .line 16
    const-string/jumbo v0, "0000fff4-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->SMART_BRACELET:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    sput-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->SMART_BRACELET_CONF:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->TEST_UUID:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "0000fff0-0000-1000-8000-00805f9b34fb"

    const-string/jumbo v2, "SMART_BRACELET_Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/wakeup/smartband/model/ble/GattAttributes;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "0000fff4-0000-1000-8000-00805f9b34fb"

    const-string/jumbo v2, "SMART_BRACELET_Measurement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

