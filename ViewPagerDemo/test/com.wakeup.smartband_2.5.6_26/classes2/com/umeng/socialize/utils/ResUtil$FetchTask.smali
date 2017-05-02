.class Lcom/umeng/socialize/utils/ResUtil$FetchTask;
.super Landroid/os/AsyncTask;
.source "ResUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/ResUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private isBackground:Z

.field private mBindAnim:Landroid/view/animation/Animation;

.field private mBindListener:Lcom/umeng/socialize/utils/ResUtil$BindDrawableListener;

.field private mCacheFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mMode:Lcom/umeng/socialize/utils/ResUtil$BindMode;

.field private mUrl:Ljava/lang/String;


# direct methods
