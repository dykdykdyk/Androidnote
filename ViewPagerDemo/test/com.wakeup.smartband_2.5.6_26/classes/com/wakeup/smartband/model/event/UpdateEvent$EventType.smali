.class public final enum Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;
.super Ljava/lang/Enum;
.source "UpdateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/model/event/UpdateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

.field public static final enum APPUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

.field public static final enum BAND_BATTERY:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

.field public static final enum BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

.field public static final enum DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

.field public static final enum OTAUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    const-string/jumbo v1, "APPUPDATE"

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->APPUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    .line 25
    new-instance v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    const-string/jumbo v1, "OTAUPDATE"

    invoke-direct {v0, v1, v3}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->OTAUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    .line 26
    new-instance v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    const-string/jumbo v1, "BAND_BATTERY"

    invoke-direct {v0, v1, v4}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->BAND_BATTERY:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    .line 27
    new-instance v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    const-string/jumbo v1, "DEVICE_CONNECT_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    .line 28
    new-instance v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    const-string/jumbo v1, "BAND_VERSION_GOT"

    invoke-direct {v0, v1, v6}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->APPUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->OTAUPDATE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->BAND_BATTERY:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->$VALUES:[Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->$VALUES:[Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    invoke-virtual {v0}, [Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    return-object v0
.end method
