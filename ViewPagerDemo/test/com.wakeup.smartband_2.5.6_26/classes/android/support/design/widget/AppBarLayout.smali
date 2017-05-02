.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field private static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field private static final PENDING_ACTION_COLLAPSED:I = 0x2

.field private static final PENDING_ACTION_EXPANDED:I = 0x1

.field private static final PENDING_ACTION_NONE:I


# instance fields
.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTargetElevation:F

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 124
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 125
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 131
    iput v3, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 145
    sget-object v1, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v2, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    .line 148
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 150
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 152
    :cond_3c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-static {p0}, Landroid/support/design/widget/ViewUtils;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 159
    iget v1, p0, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 161
    new-instance v1, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/WindowInsetsCompat;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/AppBarLayout;
    .param p1, "x1"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/AppBarLayout;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .registers 6
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 467
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 468
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 471
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_a
    if-ge v1, v2, :cond_1a

    .line 472
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 473
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 478
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void

    .line 471
    .restart local v0    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 180
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 181
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_f
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 263
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4

    .prologue
    .line 268
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 278
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 279
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 283
    :goto_b
    return-object v0

    .line 280
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 281
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 283
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method final getDownNestedPreScrollRange()I
    .registers 9

    .prologue
    .line 345
    iget v6, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 347
    iget v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 376
    :goto_7
    return v5

    .line 350
    :cond_8
    const/4 v5, 0x0

    .line 351
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_47

    .line 352
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 354
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 357
    .local v1, "childHeight":I
    :goto_25
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 359
    .local v2, "flags":I
    and-int/lit8 v6, v2, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_45

    .line 361
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 363
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_43

    .line 365
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 351
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 354
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    :cond_3e
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_25

    .line 368
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_43
    add-int/2addr v5, v1

    goto :goto_3b

    .line 370
    :cond_45
    if-lez v5, :cond_3b

    .line 376
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_47
    iput v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    goto :goto_7
.end method

.method final getDownNestedScrollRange()I
    .registers 10

    .prologue
    .line 383
    iget v7, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 385
    iget v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 415
    :goto_7
    return v5

    .line 388
    :cond_8
    const/4 v5, 0x0

    .line 389
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_e
    if-ge v3, v6, :cond_43

    .line 390
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 392
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 395
    .local v1, "childHeight":I
    :goto_24
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 397
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 399
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_43

    .line 401
    add-int/2addr v5, v1

    .line 403
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_40

    .line 407
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v5, v7

    goto :goto_7

    .line 392
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    :cond_3b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_24

    .line 389
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 415
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_43
    iput v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    goto :goto_7
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v4, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 420
    .local v2, "topInset":I
    :goto_b
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 421
    .local v1, "minHeight":I
    if-eqz v1, :cond_17

    .line 423
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    .line 428
    :cond_14
    :goto_14
    return v3

    .end local v1    # "minHeight":I
    .end local v2    # "topInset":I
    :cond_15
    move v2, v3

    .line 419
    goto :goto_b

    .line 427
    .restart local v1    # "minHeight":I
    .restart local v2    # "topInset":I
    :cond_17
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    .line 428
    .local v0, "childCount":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_14

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    goto :goto_14
.end method

.method getPendingAction()I
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .registers 2

    .prologue
    .line 454
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 11

    .prologue
    .line 296
    iget v8, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 297
    iget v8, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 327
    :goto_7
    return v8

    .line 300
    :cond_8
    const/4 v5, 0x0

    .line 301
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    .local v7, "z":I
    :goto_e
    if-ge v3, v7, :cond_3a

    .line 302
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 304
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 307
    .local v1, "childHeight":I
    :goto_24
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 309
    .local v2, "flags":I
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_3a

    .line 311
    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget v9, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 313
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_4e

    .line 317
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v5, v8

    .line 326
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_3a
    iget-object v8, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v8, :cond_51

    iget-object v8, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v6

    .line 327
    .local v6, "top":I
    :goto_44
    sub-int v8, v5, v6

    iput v8, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    goto :goto_7

    .line 304
    .end local v6    # "top":I
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_24

    .line 301
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 326
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_51
    const/4 v6, 0x0

    goto :goto_44
.end method

.method final getUpNestedPreScrollRange()I
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method final hasChildWithInterpolator()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method final hasScrollableChildren()Z
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, -0x1

    .line 198
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 201
    iput v5, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 202
    iput v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 203
    iput v5, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 205
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    .local v4, "z":I
    :goto_12
    if-ge v2, v4, :cond_27

    .line 207
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 209
    .local v1, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 211
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_28

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 216
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_27
    return-void

    .line 206
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 191
    if-eqz p1, :cond_7

    .line 192
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_7
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 463
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 240
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 241
    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 5
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 256
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-eqz p2, :cond_11

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 258
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 259
    return-void

    .line 256
    :cond_e
    const/4 v0, 0x2

    move v1, v0

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 220
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    return-void
.end method

.method public setTargetElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .prologue
    .line 446
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    .line 447
    return-void
.end method
