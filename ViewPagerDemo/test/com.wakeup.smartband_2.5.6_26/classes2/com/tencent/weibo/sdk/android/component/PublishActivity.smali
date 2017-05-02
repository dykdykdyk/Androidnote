.class public Lcom/tencent/weibo/sdk/android/component/PublishActivity;
.super Landroid/app/Activity;
.source "PublishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private button_camera:Landroid/widget/ImageButton;

.field private button_conversation:Landroid/widget/ImageButton;

.field private button_esc:Landroid/widget/Button;

.field private button_friend:Landroid/widget/ImageButton;

.field private button_location:Landroid/widget/ImageButton;

.field private button_send:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field private editText_text:Landroid/widget/EditText;

.field private edstring:Ljava/lang/String;

.field private frameLayout_big:Landroid/widget/FrameLayout;

.field private frameLayout_icon:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private imageView_big:Landroid/widget/ImageView;

.field private imageView_bound:Landroid/widget/ImageView;

.field private imageView_delete:Landroid/widget/ImageView;

.field private imageView_icon:Landroid/widget/ImageView;

.field private layout_big_delete:Landroid/widget/LinearLayout;

.field private layout_imagebound:Landroid/widget/LinearLayout;

.field private layout_set:Landroid/widget/LinearLayout;

.field private location:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lyout:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLocation:Landroid/location/Location;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private textView_num:Landroid/widget/TextView;

.field private viewroot:Landroid/widget/LinearLayout;

.field private weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;


# direct methods
.method public constructor <init>()V
    .registers 2

