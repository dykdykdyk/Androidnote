.class public Lcom/wakeup/smartband/ui/alert/ClockSettingActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "ClockSettingActivity.java"


# static fields
.field public static final REQUEST_CODE:I

.field public static isFridayWarnOn:Z

.field public static isMondayWarnOn:Z

.field public static isSaturdayWarnOn:Z

.field public static isSundayWarnOn:Z

.field public static isThursdayWarnOn:Z

.field public static isTuesdayWarnOn:Z

.field public static isWednesdayWarnOn:Z


# instance fields
.field private hour:I

.field ir_custom:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00f5
    .end annotation
.end field

.field ir_every:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00f3
    .end annotation
.end field

.field ir_monday_to_friday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00f4
    .end annotation
.end field

.field ir_only_one_noti:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00f2
    .end annotation
.end field

.field private isCheckedCustom:Z

.field private isCheckedEveny:Z

.field private isCheckedMondayToFriday:Z

.field private isCheckedOnlyOneNoti:Z

.field private isCheckeds:[Ljava/lang/Boolean;

.field private iv_checked_custom:Landroid/widget/ImageView;

.field private iv_checked_every:Landroid/widget/ImageView;

.field private iv_checked_monToFri:Landroid/widget/ImageView;

.field private iv_checked_only:Landroid/widget/ImageView;

.field private ivs:[Landroid/widget/ImageView;

.field loopView_hour:Lcom/wakeup/smartband/pickerview/LoopView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ef
    .end annotation
.end field

.field loopView_min:Lcom/wakeup/smartband/pickerview/LoopView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00f0
    .end annotation
.end field

.field private mBuilder:Lcom/het/comres/view/dialog/CommPrompDialog$Builder;

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private minute:I

.field private model:Lcom/wakeup/smartband/model/AlertModel;

.field private modelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private repeat:I

.field private stringsh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

