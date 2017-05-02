.class public final enum Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDragStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

.field public static final enum Close:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

.field public static final enum Dragging:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

.field public static final enum Open:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    const-string/jumbo v1, "Close"

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Close:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    new-instance v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v3}, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Open:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    new-instance v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    const-string/jumbo v1, "Dragging"

    invoke-direct {v0, v1, v4}, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Dragging:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    sget-object v1, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Close:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Open:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->Dragging:Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->$VALUES:[Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    return-object v0
.end method

.method public static values()[Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->$VALUES:[Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    invoke-virtual {v0}, [Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wakeup/smartband/ui/widget/swipe/SwipeLayout$SwipeDragStatus;

    return-object v0
.end method
