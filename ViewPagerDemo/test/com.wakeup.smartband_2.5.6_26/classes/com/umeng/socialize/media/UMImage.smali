.class public Lcom/umeng/socialize/media/UMImage;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/media/UMImage$IImageConvertor;,
        Lcom/umeng/socialize/media/UMImage$ConvertConfig;,
        Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;,
        Lcom/umeng/socialize/media/UMImage$ResConvertor;,
        Lcom/umeng/socialize/media/UMImage$BinaryConvertor;,
        Lcom/umeng/socialize/media/UMImage$UrlConvertor;,
        Lcom/umeng/socialize/media/UMImage$FileConvertor;,
        Lcom/umeng/socialize/media/UMImage$BitmapConvertor;
    }
.end annotation


# instance fields
.field private h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

.field private i:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
