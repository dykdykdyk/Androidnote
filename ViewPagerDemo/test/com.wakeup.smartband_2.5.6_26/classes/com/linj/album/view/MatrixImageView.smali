.class public Lcom/linj/album/view/MatrixImageView;
.super Landroid/widget/ImageView;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;,
        Lcom/linj/album/view/MatrixImageView$OnMovingListener;,
        Lcom/linj/album/view/MatrixImageView$GestureListener;,
        Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MatrixImageView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:F

.field private mImageWidth:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScale:F

.field private moveListener:Lcom/linj/album/view/MatrixImageView$OnMovingListener;

.field private singleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;


# direct methods
