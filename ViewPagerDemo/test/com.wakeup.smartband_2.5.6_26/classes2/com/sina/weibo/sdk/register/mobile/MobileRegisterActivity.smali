.class public Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.super Landroid/app/Activity;
.source "MobileRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/sina/weibo/sdk/component/view/ResizeableLayout$SizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;
    }
.end annotation


# static fields
.field private static final APPKEY_NOT_SET_CN:Ljava/lang/String; = "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

.field private static final APPKEY_NOT_SET_EN:Ljava/lang/String; = "your appkey not set"

.field private static final APPKEY_NOT_SET_TW:Ljava/lang/String; = "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

.field private static final CANCEL_EN:Ljava/lang/String; = "Cancel"

.field private static final CANCEL_ZH_CN:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CANCEL_ZH_TW:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CHINA_CN:Ljava/lang/String; = "\u4e2d\u56fd"

.field private static final CHINA_EN:Ljava/lang/String; = "China"

.field private static final CHINA_TW:Ljava/lang/String; = "\u4e2d\u570b"

.field private static final CODE_LENGTH_CN:Ljava/lang/String; = "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

.field private static final CODE_LENGTH_EN:Ljava/lang/String; = "Your code isn\u2019t 6-digit long"

.field private static final CODE_LENGTH_TW:Ljava/lang/String; = "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

.field private static final DEFAULT_BG_COLOR:I = -0xd0d0e

.field private static final DEFAULT_CLEAR_BTN:I = 0x16

.field private static final DEFAULT_TEXT_PADDING:I = 0xc

.field private static final DEFAULT_TIPS_TEXT_SIZE:I = 0xd

.field private static final DEFAULT__RIGHT_TRIANGLE:I = 0xd

.field private static final EMPTY_VIEW_TEXT_COLOR:I = -0x424243

.field private static final GET_CODE_BTN_ID:I = 0x3

.field private static final GET_CODE_CN:Ljava/lang/String; = "\u83b7\u53d6\u9a8c\u8bc1\u7801"

.field private static final GET_CODE_EN:Ljava/lang/String; = "Get code"

.field private static final GET_CODE_TW:Ljava/lang/String; = "\u7372\u53d6\u9a57\u8b49\u78bc"

.field private static final HELP_INFO_CN:Ljava/lang/String; = "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

.field private static final HELP_INFO_EN:Ljava/lang/String; = "Confirm your country/region and enter your mobile number"

.field private static final HELP_INFO_TW:Ljava/lang/String; = "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

.field private static final INPUT_AUTH_CODE_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

.field private static final INPUT_AUTH_CODE_EN:Ljava/lang/String; = "Verification code"

.field private static final INPUT_AUTH_CODE_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

.field private static final INPUT_PHONE_NUM_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

.field private static final INPUT_PHONE_NUM_EN:Ljava/lang/String; = "Your mobile number"

.field private static final INPUT_PHONE_NUM_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

.field private static final LINK_TEXT_COLOR:I = -0x7d7d7e

.field private static final MIAN_LINK_TEXT_COLOR:I = -0xaf8251

.field private static final NETWORK_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

.field private static final NETWORK_ERROR_EN:Ljava/lang/String; = "your network is  disabled  try again later"

.field private static final NETWORK_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

.field private static final OK_EN:Ljava/lang/String; = "OK"

.field private static final OK_ZH_CN:Ljava/lang/String; = "\u786e\u5b9a"

.field private static final OK_ZH_TW:Ljava/lang/String; = "\u78ba\u5b9a"

.field private static final PHONE_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

.field private static final PHONE_ERROR_EN:Ljava/lang/String; = "Your phone number isn\u2019t 11-digit long"

.field private static final PHONE_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

.field private static final PHONE_NUM_CLEAR_BTN_ID:I = 0x4

.field public static final REGISTER_TITLE:Ljava/lang/String; = "register_title"

.field private static final RESIZEABLE_INPUTMETHODHIDE:I = 0x0

.field private static final RESIZEABLE_INPUTMETHODSHOW:I = 0x1

.field public static final RESPONSE_EXPIRES:Ljava/lang/String; = "expires"

.field public static final RESPONSE_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field private static final SELECT_COUNTRY_REQUEST_CODE:I = 0x0

.field private static final SEND_MSG:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/send"

.field private static final SEND_SUBMIT:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/submit"

.field private static final SERVER_ERROR_CN:Ljava/lang/String; = "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field private static final SERVER_ERROR_EN:Ljava/lang/String; = "the server is busy, please  wait"

.field private static final SERVER_ERROR_TW:Ljava/lang/String; = "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

.field private static final SINA_NOTICE_EN:Ljava/lang/String; = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

.field private static final SINA_NOTICE_ZH_CN:Ljava/lang/String; = "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

.field private static final SINA_NOTICE_ZH_TW:Ljava/lang/String; = "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

.field private static final SINA_PRIVATE_URL:Ljava/lang/String; = "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349"

.field private static final SINA_PROTOCOL_URL:Ljava/lang/String; = "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5"

.field private static final SINA_SERVICE_EN:Ljava/lang/String; = "Service By Sina WeiBo"

.field private static final SINA_SERVICE_ZH_CN:Ljava/lang/String; = "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final SINA_SERVICE_ZH_TW:Ljava/lang/String; = "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_BAR_ID:I = 0x1

.field private static final TITLE_CN:Ljava/lang/String; = "\u9a8c\u8bc1\u7801\u767b\u5f55"

.field private static final TITLE_EN:Ljava/lang/String; = "Login"

.field private static final TITLE_TW:Ljava/lang/String; = "\u9a57\u8b49\u78bc\u767b\u9304"

.field private static final TRIANGLE_ID:I = 0x2

.field private static final WAIT_CN:Ljava/lang/String; = "\u6b63\u5728\u5904\u7406\u4e2d....."

.field private static final WAIT_EN:Ljava/lang/String; = "please wait .... "

.field private static final WAIT_TW:Ljava/lang/String; = "\u6b63\u5728\u8655\u7406\u4e2d....."


# instance fields
.field private cfrom:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mBtnRegist:Landroid/widget/Button;

.field private mCheckCode:Landroid/widget/EditText;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryCodeStr:Ljava/lang/String;

.field private mCountryLayout:Landroid/widget/RelativeLayout;

.field private mCountryName:Landroid/widget/TextView;

.field private mCountryNameStr:Ljava/lang/String;

.field private mGetCodeBtn:Landroid/widget/Button;

.field private mInfoText:Landroid/widget/TextView;

.field private mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

.field private mKeyHash:Ljava/lang/String;

.field private mLoadingDlg:Landroid/app/ProgressDialog;

.field private mMaxHeight:I

.field private mPackageName:Ljava/lang/String;

.field private mPhoneNum:Landroid/widget/EditText;

.field private mPhoneNumClearBtn:Landroid/widget/ImageView;

.field private mRegistScrollview:Landroid/widget/ScrollView;

.field private mRegiter_llt:Landroid/widget/LinearLayout;

.field private mSpecifyTitle:Ljava/lang/String;

.field private mTips:Landroid/widget/TextView;

.field private titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .registers 3

