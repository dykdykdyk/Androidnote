.class public Lcom/het/comres/view/dialog/CommonToast;
.super Landroid/widget/Toast;
.source "CommonToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/dialog/CommonToast$CommonToastType;
    }
.end annotation


# static fields
.field private static final DROP_DUPLICATE_TOAST_TS:J = 0x7d0L

.field private static mBasicToast:Landroid/widget/Toast;

.field private static sLast:Ljava/lang/String;

.field private static sLastTs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-string/jumbo v0, ""

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast;->sLast:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/het/comres/view/dialog/CommonToast;->sLastTs:J

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/het/comres/view/dialog/CommonToast;->mBasicToast:Landroid/widget/Toast;

    return-void
.end method

