.class public Lcom/linj/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;,
        Lcom/linj/imageloader/ImageLoader$Type;
    }
.end annotation


# static fields
.field private static final DEAFULT_THREAD_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static mInstance:Lcom/linj/imageloader/ImageLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolThread:Ljava/lang/Thread;

.field private mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

.field private mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mType:Lcom/linj/imageloader/ImageLoader$Type;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
