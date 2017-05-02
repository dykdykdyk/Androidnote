.class public Lcom/wakeup/smartband/ui/camera/CameraLibraryActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "CameraLibraryActivity.java"

# interfaces
.implements Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;


# static fields
.field public static final EXTRA_PATH:Ljava/lang/String; = "EXTRA_PATH"

.field public static final TAG:Ljava/lang/String; = "AlbumAty"

.field public static instance:Lcom/wakeup/smartband/ui/camera/CameraLibraryActivity;


# instance fields
.field ll_bottom:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a6
    .end annotation
.end field

.field mAlbumView:Lcom/linj/album/view/AlbumGridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00dd
    .end annotation
.end field

.field private mSaveRoot:Ljava/lang/String;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rl_navi:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01ae
    .end annotation
.end field

.field rl_select:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01b0
    .end annotation
.end field

.field tv_delete:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a7
    .end annotation
.end field

.field tv_select:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01af
    .end annotation
.end field

.field tv_select_all:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01b3
    .end annotation
.end field

.field tv_selected_count:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01b2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

