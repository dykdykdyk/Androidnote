.class public final enum Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;
.super Ljava/lang/Enum;
.source "BaseIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

.field public static final enum CANCEL:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

.field public static final enum END:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

.field public static final enum START:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->START:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    new-instance v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v3}, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->END:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    new-instance v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->CANCEL:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    sget-object v1, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->START:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->END:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->CANCEL:Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->$VALUES:[Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    return-object v0
.end method

.method public static values()[Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->$VALUES:[Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    invoke-virtual {v0}, [Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wakeup/smartband/ui/widget/view/BaseIndicatorController$AnimStatus;

    return-object v0
.end method
