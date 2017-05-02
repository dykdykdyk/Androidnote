.class public Lcom/wakeup/smartband/ui/alert/SmartAlertActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "SmartAlertActivity.java"


# instance fields
.field il_app_alarm:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f017d
    .end annotation
.end field

.field il_clock_alarm:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f017b
    .end annotation
.end field

.field il_disturbance_model:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f017e
    .end annotation
.end field

.field il_sedentariness_alarm:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f017c
    .end annotation
.end field

.field ir_anti_lost:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f017a
    .end annotation
.end field

.field ir_incall_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0178
    .end annotation
.end field

.field ir_sms_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0179
    .end annotation
.end field

.field private isAntiLostChecked:Z

.field private isSmsChecked:Z

.field private isincallChecked:Z

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mIv_anti_lost:Landroid/widget/ImageView;

.field private mIv_noti_incall:Landroid/widget/ImageView;

.field private mIv_noti_sms:Landroid/widget/ImageView;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;


# direct methods
.method public constructor <init>()V
    .registers 2

