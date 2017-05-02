.class public Lcom/tencent/open/yyb/MoreFloatingDialog;
.super Landroid/app/Dialog;
.source "ProGuard"


# static fields
.field private static final NINE_PATCH_TOP:F = 9.0f

.field private static final SHARE_ICON_SIZE:F = 28.0f

.field private static final SOURCE_FLOATING_BG:Ljava/lang/String; = "yyb_appdetail_bg_floatingwindow.9.png"

.field private static final SOURCE_FRIENDS_BG:Ljava/lang/String; = "yyb_friends.png"

.field private static final SOURCE_QQ_BG:Ljava/lang/String; = "yyb_qq.png"

.field private static final SOURCE_QZONE_BG:Ljava/lang/String; = "yyb_qzone.png"

.field private static final SOURCE_WEIXIN_BG:Ljava/lang/String; = "yyb_weixin.png"

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.MoreFloatingDialog"


# instance fields
.field private density:F

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mShareItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private ninePatchRect:Landroid/graphics/Rect;


# direct methods
