.class public Lcom/wakeup/smartband/ui/user/UserInfoActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "UserInfoActivity.java"


# static fields
.field private static final DIATOLIC_MAX:I = 0xc8

.field private static final DIATOLIC_MIN:I = 0x14

.field private static final HEIGHT_MAX:I = 0xfa

.field private static final HEIGHT_MIN:I = 0x32

.field public static final SOURCE:Ljava/lang/String; = "source"

.field private static final SYSTALTIC_MAX:I = 0xfa

.field private static final SYSTALTIC_MIN:I = 0x32

.field public static final TAG:Ljava/lang/String; = "UserInfoActivity"

.field private static final WEIGHT_MAX:I = 0x190

.field private static final WEIGHT_MIN:I = 0x14

.field public static instance:Lcom/wakeup/smartband/ui/user/UserInfoActivity; = null

.field private static final mStepLength_MAX:I = 0x64

.field private static final mStepLength_MIN:I = 0x14


# instance fields
.field private currentHand:Ljava/lang/String;

.field private currentSex:Ljava/lang/String;

.field private dialogType:I

.field ll_bp:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f019d
    .end annotation
.end field

.field ll_sleep_time_set:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0199
    .end annotation
.end field

.field private mBuilder:Lcom/het/comres/view/dialog/CommPrompDialog$Builder;

.field private mCalendar:Ljava/util/Calendar;

.field mCheckboxMan:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e2
    .end annotation
.end field

.field mCheckboxWoman:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e3
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mCount:I

.field private mDateManager:Lcom/wakeup/smartband/manager/DateManager;

.field private mDatePickerLister:Lcom/wakeup/smartband/manager/DateManager$DatePickerLister;

.field private mDay:I

.field private mDiatolics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mItemHands:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e4
    .end annotation
.end field

.field mItemSex:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e1
    .end annotation
.end field

.field mLayoutBirthday:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f018b
    .end annotation
.end field

.field mLayoutDiatolic:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f019f
    .end annotation
.end field

.field mLayoutFallSleep:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f019b
    .end annotation
.end field

.field mLayoutHeight:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f018c
    .end annotation
.end field

.field mLayoutStepLength:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f018e
    .end annotation
.end field

.field mLayoutSystaltic:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f019e
    .end annotation
.end field

.field mLayoutWakeUpTime:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f019c
    .end annotation
.end field

.field mLayoutWeight:Lcom/het/comres/view/layout/ItemLinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f018d
    .end annotation
.end field

.field mLeftHand:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e5
    .end annotation
.end field

.field private mMonth:I

.field mRightHand:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f02e6
    .end annotation
.end field

.field private mSleepHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepMins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStepLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystaltics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewBirthday:Landroid/widget/TextView;

.field private mTextViewDiastolic:Landroid/widget/TextView;

.field private mTextViewFallSleep:Landroid/widget/TextView;

.field private mTextViewHeight:Landroid/widget/TextView;

.field private mTextViewStepLength:Landroid/widget/TextView;

.field private mTextViewSystaltic:Landroid/widget/TextView;

.field private mTextViewWakeUpTime:Landroid/widget/TextView;

.field private mTextViewWeight:Landroid/widget/TextView;

.field mTvTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01a0
    .end annotation
.end field

.field private mUserModel:Lcom/wakeup/smartband/model/UserModel;

.field private mWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private onSimpleSaveListener:Lcom/wakeup/smartband/ui/widget/AbstractBaseDialog$OnSaveListener;

.field public prevTAG:Ljava/lang/String;

.field sb_distance:Lcom/wakeup/smartband/ui/widget/SegmentButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0192
    .end annotation
.end field

.field sb_height:Lcom/wakeup/smartband/ui/widget/SegmentButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0195
    .end annotation
.end field

.field sb_weight:Lcom/wakeup/smartband/ui/widget/SegmentButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0198
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/ui/user/UserInfoActivity;->instance:Lcom/wakeup/smartband/ui/user/UserInfoActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

