.class public Lcom/wakeup/smartband/ui/set/SettingActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "SettingActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static instance:Lcom/wakeup/smartband/ui/set/SettingActivity;


# instance fields
.field apple_health:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0165
    .end annotation
.end field

.field commonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field health_target:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0161
    .end annotation
.end field

.field ir_hour_system:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0162
    .end annotation
.end field

.field private isHourSystemChecked:Z

.field mItemPersonal:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0160
    .end annotation
.end field

.field private mIv_hour_system:Landroid/widget/ImageView;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field private source:Ljava/lang/String;

.field tv_third:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0163
    .end annotation
.end field

.field weixin_sport:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0164
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/wakeup/smartband/ui/set/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/ui/set/SettingActivity;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/set/SettingActivity;->instance:Lcom/wakeup/smartband/ui/set/SettingActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

