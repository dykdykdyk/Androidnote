.class public abstract Lcom/wakeup/smartband/ui/widget/CommonDialog;
.super Lcom/het/comres/view/dialog/CommonBottomDialog;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/CommonDialog$OnSaveListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutView:Landroid/view/View;

.field public mOnSaveListener:Lcom/wakeup/smartband/ui/widget/CommonDialog$OnSaveListener;

.field private mSave:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field public sleep_hour:Lcom/wakeup/smartband/pickerview/LoopView;

.field public sleep_min:Lcom/wakeup/smartband/pickerview/LoopView;


# direct methods
