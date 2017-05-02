.class public final enum Lcom/linj/camera/view/CameraView$FlashMode;
.super Ljava/lang/Enum;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/linj/camera/view/CameraView$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linj/camera/view/CameraView$FlashMode;

.field public static final enum AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

.field public static final enum OFF:Lcom/linj/camera/view/CameraView$FlashMode;

.field public static final enum ON:Lcom/linj/camera/view/CameraView$FlashMode;

.field public static final enum TORCH:Lcom/linj/camera/view/CameraView$FlashMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    new-instance v0, Lcom/linj/camera/view/CameraView$FlashMode;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/linj/camera/view/CameraView$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 537
    new-instance v0, Lcom/linj/camera/view/CameraView$FlashMode;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/linj/camera/view/CameraView$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->OFF:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 539
    new-instance v0, Lcom/linj/camera/view/CameraView$FlashMode;

    const-string/jumbo v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/linj/camera/view/CameraView$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 541
    new-instance v0, Lcom/linj/camera/view/CameraView$FlashMode;

    const-string/jumbo v1, "TORCH"

    invoke-direct {v0, v1, v5}, Lcom/linj/camera/view/CameraView$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->TORCH:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 533
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/linj/camera/view/CameraView$FlashMode;

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->OFF:Lcom/linj/camera/view/CameraView$FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->TORCH:Lcom/linj/camera/view/CameraView$FlashMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->$VALUES:[Lcom/linj/camera/view/CameraView$FlashMode;

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
    .line 533
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linj/camera/view/CameraView$FlashMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    const-class v0, Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linj/camera/view/CameraView$FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/linj/camera/view/CameraView$FlashMode;
    .registers 1

    .prologue
    .line 533
    sget-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->$VALUES:[Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v0}, [Lcom/linj/camera/view/CameraView$FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linj/camera/view/CameraView$FlashMode;

    return-object v0
.end method
