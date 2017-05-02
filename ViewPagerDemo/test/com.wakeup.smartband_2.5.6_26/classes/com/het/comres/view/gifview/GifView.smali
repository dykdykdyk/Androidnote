.class public Lcom/het/comres/view/gifview/GifView;
.super Landroid/view/View;
.source "GifView.java"

# interfaces
.implements Lcom/het/comres/view/gifview/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/gifview/GifView$DrawThread;,
        Lcom/het/comres/view/gifview/GifView$GifImageType;
    }
.end annotation


# instance fields
.field private animationType:Lcom/het/comres/view/gifview/GifView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private drawThread:Lcom/het/comres/view/gifview/GifView$DrawThread;

.field private gifDecoder:Lcom/het/comres/view/gifview/GifDecoder;

.field private pause:Z

.field private rect:Landroid/graphics/Rect;

.field private redrawHandler:Landroid/os/Handler;

.field private showHeight:I

.field private showWidth:I


# direct methods
