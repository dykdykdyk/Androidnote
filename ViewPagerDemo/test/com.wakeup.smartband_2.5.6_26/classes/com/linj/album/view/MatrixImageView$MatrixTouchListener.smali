.class public Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatrixTouchListener"
.end annotation


# static fields
.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_UNABLE:I = 0x3

.field private static final MODE_ZOOM:I = 0x2


# instance fields
.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field mDobleClickScale:F

.field mFirstMove:Z

.field mLeftDragable:Z

.field mMaxScale:F

.field private mMode:I

.field mRightDragable:Z

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/linj/album/view/MatrixImageView;


# direct methods
