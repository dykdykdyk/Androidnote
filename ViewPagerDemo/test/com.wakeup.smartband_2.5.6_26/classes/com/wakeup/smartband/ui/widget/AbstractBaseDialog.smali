.class public abstract Lcom/wakeup/smartband/ui/widget/AbstractBaseDialog;
.super Lcom/het/comres/view/dialog/CommonBottomDialog;
.source "AbstractBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/AbstractBaseDialog$OnSaveListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutView:Landroid/view/View;

.field public mOnSaveListener:Lcom/wakeup/smartband/ui/widget/AbstractBaseDialog$OnSaveListener;

.field private mSave:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field public mUnit:Landroid/widget/TextView;

.field public mUserModel:Lcom/wakeup/smartband/model/UserModel;

.field public unit:Ljava/lang/String;

.field public wheelViewFirst:Lcom/het/comres/view/wheelview/WheelView;

.field public wheelViewSecond:Lcom/het/comres/view/wheelview/WheelView;

.field public wheelViewThree:Lcom/het/comres/view/wheelview/WheelView;


# direct methods
