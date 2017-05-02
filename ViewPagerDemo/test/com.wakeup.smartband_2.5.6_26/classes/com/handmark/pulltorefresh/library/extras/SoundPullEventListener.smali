.class public Lcom/handmark/pulltorefresh/library/extras/SoundPullEventListener;
.super Ljava/lang/Object;
.source "SoundPullEventListener.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private final mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
