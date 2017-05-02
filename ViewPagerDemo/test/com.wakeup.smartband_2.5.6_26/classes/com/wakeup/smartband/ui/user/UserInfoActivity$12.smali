.class synthetic Lcom/wakeup/smartband/ui/user/UserInfoActivity$12;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/user/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wakeup$smartband$model$event$UpdateEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 803
    invoke-static {}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->values()[Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wakeup/smartband/ui/user/UserInfoActivity$12;->$SwitchMap$com$wakeup$smartband$model$event$UpdateEvent$EventType:[I

    :try_start_9
    sget-object v0, Lcom/wakeup/smartband/ui/user/UserInfoActivity$12;->$SwitchMap$com$wakeup$smartband$model$event$UpdateEvent$EventType:[I

    sget-object v1, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->BAND_VERSION_GOT:Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;

    invoke-virtual {v1}, Lcom/wakeup/smartband/model/event/UpdateEvent$EventType;->ordinal()I

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
