.class public Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AlbumViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/AlbumViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

.field playVideoListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/linj/album/view/AlbumViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const-class v0, Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

