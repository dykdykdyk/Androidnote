.class public Lcom/linj/video/view/VideoPlayerContainer;
.super Landroid/widget/LinearLayout;
.source "VideoPlayerContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/linj/video/view/VideoPlayerOperation;
.implements Lcom/linj/video/view/VideoPlayerView$PlayerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerContainer"


# instance fields
.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mCurrentTimeView:Landroid/widget/TextView;

.field private mDurationView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPauseButton:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/SeekBar;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

.field onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field playerRunnable:Ljava/lang/Runnable;


# direct methods
