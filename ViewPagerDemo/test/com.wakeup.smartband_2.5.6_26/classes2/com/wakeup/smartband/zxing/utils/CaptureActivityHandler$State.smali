.class final enum Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    const-string/jumbo v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    new-instance v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    new-instance v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->DONE:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    sget-object v1, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->DONE:Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->$VALUES:[Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->$VALUES:[Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wakeup/smartband/zxing/utils/CaptureActivityHandler$State;

    return-object v0
.end method
