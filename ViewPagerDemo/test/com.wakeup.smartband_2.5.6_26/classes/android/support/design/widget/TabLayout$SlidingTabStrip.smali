.class Landroid/support/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 1330
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1331
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1324
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1327
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1328
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1334
    return-void
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V
    .registers 3
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1320
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1702(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 1320
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1802(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 1320
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1451
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    .line 1453
    :cond_8
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1454
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1455
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1457
    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f800000

    .line 1428
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1431
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_55

    .line 1432
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1433
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1435
    .local v2, "right":I
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_51

    .line 1437
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1438
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1440
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1447
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_51
    :goto_51
    invoke-direct {p0, v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1448
    return-void

    .line 1444
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_55
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_51
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 13
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x1

    .line 1460
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_53

    move v7, v0

    .line 1463
    .local v7, "isRtl":Z
    :goto_8
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1464
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1465
    .local v3, "targetLeft":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1469
    .local v5, "targetRight":I
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_55

    .line 1471
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1472
    .local v2, "startLeft":I
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1493
    .local v4, "startRight":I
    :goto_22
    if-ne v2, v3, :cond_26

    if-eq v4, v5, :cond_52

    .line 1494
    :cond_26
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v1

    # setter for: Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->access$1502(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 1495
    .local v6, "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1496
    invoke-virtual {v6, p2}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 1497
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 1498
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1507
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 1520
    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 1522
    .end local v6    # "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    :cond_52
    return-void

    .line 1460
    .end local v2    # "startLeft":I
    .end local v3    # "targetLeft":I
    .end local v4    # "startRight":I
    .end local v5    # "targetRight":I
    .end local v7    # "isRtl":Z
    .end local v9    # "targetView":Landroid/view/View;
    :cond_53
    const/4 v7, 0x0

    goto :goto_8

    .line 1475
    .restart local v3    # "targetLeft":I
    .restart local v5    # "targetRight":I
    .restart local v7    # "isRtl":Z
    .restart local v9    # "targetView":Landroid/view/View;
    :cond_55
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x18

    # invokes: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;I)I

    move-result v8

    .line 1476
    .local v8, "offset":I
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v0, :cond_6b

    .line 1478
    if-eqz v7, :cond_67

    .line 1479
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1481
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_67
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1485
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_6b
    if-eqz v7, :cond_71

    .line 1486
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1488
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_71
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22
.end method

.method childrenNeedLayout()Z
    .registers 5

    .prologue
    .line 1351
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_5
    if-ge v1, v2, :cond_16

    .line 1352
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_13

    .line 1354
    const/4 v3, 0x1

    .line 1357
    .end local v0    # "child":Landroid/view/View;
    :goto_12
    return v3

    .line 1351
    .restart local v0    # "child":Landroid/view/View;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1357
    .end local v0    # "child":Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1526
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1529
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_26

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_26

    .line 1530
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1533
    :cond_26
    return-void
.end method

.method getIndicatorPosition()F
    .registers 3

    .prologue
    .line 1367
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1422
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1424
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1425
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1372
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000

    if-eq v8, v9, :cond_e

    .line 1418
    :cond_d
    :goto_d
    return-void

    .line 1380
    :cond_e
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mMode:I
    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_d

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_d

    .line 1381
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1383
    .local v1, "count":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1386
    .local v6, "unspecifiedSpec":I
    const/4 v4, 0x0

    .line 1387
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_29
    if-ge v3, v7, :cond_3d

    .line 1388
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1389
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 1390
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1393
    .end local v0    # "child":Landroid/view/View;
    :cond_3d
    if-lez v4, :cond_d

    .line 1398
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v9, 0x10

    # invokes: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v8, v9}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;I)I

    move-result v2

    .line 1399
    .local v2, "gutter":I
    mul-int v8, v4, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_67

    .line 1402
    const/4 v3, 0x0

    :goto_53
    if-ge v3, v1, :cond_71

    .line 1403
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1404
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1405
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1406
    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1402
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1411
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_67
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # setter for: Landroid/support/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8, v11}, Landroid/support/design/widget/TabLayout;->access$1202(Landroid/support/design/widget/TabLayout;I)I

    .line 1412
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->updateTabViewsLayoutParams()V
    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)V

    .line 1416
    :cond_71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_d
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1361
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1362
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1363
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1364
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 1338
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1341
    :cond_10
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 1344
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_9

    .line 1345
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1346
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1348
    :cond_9
    return-void
.end method
