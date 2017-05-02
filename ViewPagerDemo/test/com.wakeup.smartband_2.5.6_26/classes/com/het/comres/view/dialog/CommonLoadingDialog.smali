.class public Lcom/het/comres/view/dialog/CommonLoadingDialog;
.super Lcom/het/comres/view/dialog/BaseDialog;
.source "CommonLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/dialog/CommonLoadingDialog$DefaultDismissListener;
    }
.end annotation


# static fields
.field private static final DISMISS_DELATY_FLAG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CommonLoadingDialog"


# instance fields
.field dismissHandler:Lcom/het/common/utils/HandlerUtil$StaticHandler;

.field dismissListener:Lcom/het/common/utils/HandlerUtil$MessageListener;

.field private mContext:Landroid/content/Context;

.field private mDissMissListener:Lcom/het/comres/view/dialog/CommonLoadingDialog$DefaultDismissListener;

.field private mProcessView:Landroid/view/View;

.field private mTipTv:Landroid/widget/TextView;


# direct methods
