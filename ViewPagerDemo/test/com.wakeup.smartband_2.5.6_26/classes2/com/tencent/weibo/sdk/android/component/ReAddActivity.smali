.class public Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.super Landroid/app/Activity;
.source "ReAddActivity.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private api:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

.field private content:Landroid/widget/EditText;

.field private contentStr:Ljava/lang/String;

.field private gallery:Landroid/widget/Gallery;

.field private galleryLayout:Landroid/widget/RelativeLayout;

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/LinearLayout;

.field private loadingWindow:Landroid/widget/PopupWindow;

.field private mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private mHandler:Landroid/os/Handler;

.field private musicAuthor:Ljava/lang/String;

.field private musicPath:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field private picPath:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView_num:Landroid/widget/TextView;

.field private videoCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

