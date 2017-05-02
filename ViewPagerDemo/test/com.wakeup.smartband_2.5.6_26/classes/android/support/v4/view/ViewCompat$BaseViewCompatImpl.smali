.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# static fields
.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .registers 5

    .prologue
    .line 703
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "dispatchStartTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 705
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "dispatchFinishTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_20

    .line 710
    :goto_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 711
    return-void

    .line 707
    :catch_20
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 9
    .param p1, "view"    # Landroid/support/v4/view/ScrollingView;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 997
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 998
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v4

    .line 999
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 1000
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 1004
    :cond_13
    :goto_13
    return v2

    .line 1001
    :cond_14
    if-gez p2, :cond_1a

    .line 1002
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 1004
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 9
    .param p1, "view"    # Landroid/support/v4/view/ScrollingView;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1009
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v0

    .line 1010
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v4

    .line 1011
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 1012
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 1016
    :cond_13
    :goto_13
    return v2

    .line 1013
    :cond_14
    if-gez p2, :cond_1a

    .line 1014
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 1016
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 775
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 498
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 499
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 503
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 504
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public combineMeasuredStates(II)I
    .registers 4
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 1098
    or-int v0, p1, p2

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 943
    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 681
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_7

    .line 682
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 684
    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1f

    .line 686
    :try_start_b
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 694
    :goto_13
    return-void

    .line 687
    :catch_14
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_13
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1066
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 1067
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 1070
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1075
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 1076
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 1078
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 1056
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 1057
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    .line 1060
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "offsetInWindow"    # [I

    .prologue
    .line 1046
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 1047
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    .line 1050
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 664
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_7

    .line 665
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 667
    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1f

    .line 669
    :try_start_b
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 677
    :goto_13
    return-void

    .line 670
    :catch_14
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 675
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_13
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 579
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 978
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 993
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 890
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .registers 3

    .prologue
    .line 555
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 770
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 765
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1123
    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 854
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1037
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 1038
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    .line 1040
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1113
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 567
    const/4 v0, 0x1

    return v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1088
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 970
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 971
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    .line 973
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 958
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 928
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1138
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1139
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1143
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1144
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 938
    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 524
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 528
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 520
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 541
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 544
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 545
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 864
    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 5
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "childMeasuredState"    # I

    .prologue
    .line 619
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/AccessibilityDelegateCompat;

    .prologue
    .line 510
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 645
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    .prologue
    .line 954
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 796
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 983
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 984
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 988
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 989
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    .line 895
    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1d

    .line 897
    :try_start_5
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 898
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2d

    .line 902
    :goto_18
    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 905
    :cond_1d
    :try_start_1d
    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2c} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2c} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2c} :catch_4e

    .line 913
    :goto_2c
    return-void

    .line 899
    :catch_2d
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 906
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_38
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 908
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_43
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 910
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 886
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    .prologue
    .line 868
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fitSystemWindows"    # Z

    .prologue
    .line 923
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 537
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 564
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 596
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 600
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 584
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 610
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 963
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 964
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 966
    :cond_9
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .prologue
    .line 934
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 659
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 660
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 831
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 836
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerIcon"    # Landroid/support/v4/view/PointerIconCompat;

    .prologue
    .line 1149
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 781
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 801
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 806
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 949
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 811
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 816
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I

    .prologue
    .line 1129
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1134
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .prologue
    .line 850
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 786
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 791
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationZ"    # F

    .prologue
    .line 877
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 821
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 826
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .prologue
    .line 1109
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "axes"    # I

    .prologue
    .line 1022
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 1023
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    .line 1025
    :goto_a
    return v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1030
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 1031
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 1033
    :cond_9
    return-void
.end method
