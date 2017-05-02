.class synthetic Lcom/wakeup/smartband/ui/measure/MeasureActivity$2;
.super Ljava/lang/Object;
.source "MeasureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/measure/MeasureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 229
    invoke-static {}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->values()[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wakeup/smartband/ui/measure/MeasureActivity$2;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    :try_start_9
    sget-object v0, Lcom/wakeup/smartband/ui/measure/MeasureActivity$2;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ONE_KEY_MEASURE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/wakeup/smartband/ui/measure/MeasureActivity$2;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
