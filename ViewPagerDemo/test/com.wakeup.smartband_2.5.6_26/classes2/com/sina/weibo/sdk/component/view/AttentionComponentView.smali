.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.super Landroid/widget/FrameLayout;
.source "AttentionComponentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;
    }
.end annotation


# static fields
.field private static final ALREADY_ATTEND_EN:Ljava/lang/String; = "Following"

.field private static final ALREADY_ATTEND_ZH_CN:Ljava/lang/String; = "\u5df2\u5173\u6ce8"

.field private static final ALREADY_ATTEND_ZH_TW:Ljava/lang/String; = "\u5df2\u95dc\u6ce8"

.field private static final ATTEND_EN:Ljava/lang/String; = "Follow"

.field private static final ATTEND_ZH_CN:Ljava/lang/String; = "\u5173\u6ce8"

.field private static final ATTEND_ZH_TW:Ljava/lang/String; = "\u95dc\u6ce8"

.field private static final ATTENTION_H5:Ljava/lang/String; = "http://widget.weibo.com/relationship/followsdk.php"

.field private static final FRIENDSHIPS_SHOW_URL:Ljava/lang/String; = "https://api.weibo.com/2/friendships/show.json"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private flButton:Landroid/widget/FrameLayout;

.field private mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

.field private mButton:Landroid/widget/TextView;

.field private volatile mIsLoadingState:Z

.field private pbLoading:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

