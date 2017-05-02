.class public Lcom/linj/video/view/VideoPlayerView;
.super Landroid/view/SurfaceView;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/linj/video/view/VideoPlayerOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/video/view/VideoPlayerView$PlayerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSurfaceView"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
