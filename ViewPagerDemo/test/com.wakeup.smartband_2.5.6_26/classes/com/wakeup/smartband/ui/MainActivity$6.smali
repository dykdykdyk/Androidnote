.class synthetic Lcom/wakeup/smartband/ui/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/MainActivity;
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
    .line 330
    invoke-static {}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->values()[Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wakeup/smartband/ui/MainActivity$6;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    :try_start_9
    sget-object v0, Lcom/wakeup/smartband/ui/MainActivity$6;->$SwitchMap$com$wakeup$smartband$model$event$BaseEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->UNBIND_DEVICE:Lcom/wakeup/smartband/model/event/BaseEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/BaseEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
