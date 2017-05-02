.class public Lcom/wakeup/smartband/ui/alert/AppAlertActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "AppAlertActivity.java"


# static fields
.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"


# instance fields
.field ir_facebook_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ac
    .end annotation
.end field

.field ir_qq_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00aa
    .end annotation
.end field

.field ir_twitter_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ad
    .end annotation
.end field

.field ir_weibo_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ab
    .end annotation
.end field

.field ir_weixin_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a9
    .end annotation
.end field

.field ir_whatsapp_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ae
    .end annotation
.end field

.field private isAccessibility:Z

.field private isFacebookChecked:Z

.field private isQQChecked:Z

.field private isTwitterChecked:Z

.field private isWeiBoChecked:Z

.field private isWeiXinChecked:Z

.field private isWhatsAppChecked:Z

.field private iv:Landroid/widget/ImageView;

.field private iv_facebook_noti:Landroid/widget/ImageView;

.field private iv_qq_noti:Landroid/widget/ImageView;

.field private iv_resID:I

.field private iv_twitter_noti:Landroid/widget/ImageView;

.field private iv_weibo_noti:Landroid/widget/ImageView;

.field private iv_weixin_noti:Landroid/widget/ImageView;

.field private iv_whatsapp_noti:Landroid/widget/ImageView;

.field private mBuilder:Lcom/het/comres/view/dialog/CommPrompDialog$Builder;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field private prompDialog:Lcom/het/comres/view/dialog/CommPrompDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

