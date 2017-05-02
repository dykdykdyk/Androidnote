.class public Lcom/linj/album/view/AlbumViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AlbumViewPager.java"

# interfaces
.implements Lcom/linj/album/view/MatrixImageView$OnMovingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;,
        Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumViewPager"


# instance fields
.field private mChildIsBeingDragged:Z

.field private mImageLoader:Lcom/linj/imageloader/ImageLoader;

.field private mOptions:Lcom/linj/imageloader/DisplayImageOptions;

.field private onPlayVideoListener:Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

.field private onSingleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;


# direct methods
