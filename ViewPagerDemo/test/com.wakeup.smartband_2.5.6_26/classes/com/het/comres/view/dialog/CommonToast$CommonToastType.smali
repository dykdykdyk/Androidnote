.class public final enum Lcom/het/comres/view/dialog/CommonToast$CommonToastType;
.super Ljava/lang/Enum;
.source "CommonToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/het/comres/view/dialog/CommonToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommonToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/het/comres/view/dialog/CommonToast$CommonToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

.field public static final enum TOAST_TYPE_ACC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

.field public static final enum TOAST_TYPE_ALARM:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

.field public static final enum TOAST_TYPE_NORMAL:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

.field public static final enum TOAST_TYPE_SMILE:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

.field public static final enum TOAST_TYPE_SUC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;


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
    new-instance v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    const-string/jumbo v1, "TOAST_TYPE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_NORMAL:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    .line 25
    new-instance v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    const-string/jumbo v1, "TOAST_TYPE_SUC"

    invoke-direct {v0, v1, v3}, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_SUC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    .line 26
    new-instance v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    const-string/jumbo v1, "TOAST_TYPE_ACC"

    invoke-direct {v0, v1, v4}, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_ACC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    .line 27
    new-instance v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    const-string/jumbo v1, "TOAST_TYPE_SMILE"

    invoke-direct {v0, v1, v5}, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_SMILE:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    .line 28
    new-instance v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    const-string/jumbo v1, "TOAST_TYPE_ALARM"

    invoke-direct {v0, v1, v6}, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_ALARM:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    sget-object v1, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_NORMAL:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_SUC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_ACC:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_SMILE:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->TOAST_TYPE_ALARM:Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->$VALUES:[Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/het/comres/view/dialog/CommonToast$CommonToastType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    return-object v0
.end method

.method public static values()[Lcom/het/comres/view/dialog/CommonToast$CommonToastType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->$VALUES:[Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    invoke-virtual {v0}, [Lcom/het/comres/view/dialog/CommonToast$CommonToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/het/comres/view/dialog/CommonToast$CommonToastType;

    return-object v0
.end method
