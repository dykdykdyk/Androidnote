.class synthetic Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$5;
.super Ljava/lang/Object;
.source "BloodPressureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/measure/BloodPressureActivity;
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
    .line 208
    invoke-static {}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->values()[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$5;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    :try_start_9
    sget-object v0, Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$5;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DB_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$5;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->BP_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/wakeup/smartband/ui/measure/BloodPressureActivity$5;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->DEVICE_CONNECT_CHANGE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
