.class Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mElevation:F

.field private mIsHiding:Z

.field private mPressedTranslationZ:F

.field private mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field private mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private mStateListAnimator:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mAnimationDuration:I

    .line 53
    new-instance v0, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {v0}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setTarget(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method static synthetic access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/FloatingActionButtonEclairMr1;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$400(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    return v0
.end method

.method private static createColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p0, "selectedColor"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 250
    new-array v2, v3, [[I

    .line 251
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 252
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 254
    .local v1, "i":I
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->FOCUSED_ENABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 255
    aput p0, v0, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 258
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 259
    aput p0, v0, v1

    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 263
    new-array v3, v4, [I

    aput-object v3, v2, v1

    .line 264
    aput v4, v0, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 267
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    return-object p1
.end method

.method private updatePadding()V
    .registers 7

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    .line 203
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 204
    return-void
.end method


# virtual methods
.method hide()V
    .registers 5

    .prologue
    .line 161
    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 183
    :cond_c
    :goto_c
    return-void

    .line 166
    :cond_d
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c
.end method

.method jumpDrawableToCurrentState()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 157
    return-void
.end method

.method onDrawableStateChanged([I)V
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 152
    return-void
.end method

.method setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .registers 16
    .param p1, "originalBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p3, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "rippleColor"    # I
    .param p5, "borderWidth"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 73
    if-eqz p3, :cond_19

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 80
    :cond_19
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 81
    .local v7, "touchFeedbackShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 82
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 83
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    if-lez p5, :cond_8a

    .line 93
    invoke-virtual {p0, p5, p2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x3

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v9

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v3

    .line 100
    .local v6, "layers":[Landroid/graphics/drawable/Drawable;
    :goto_5b
    new-instance v0, Landroid/support/design/widget/ShadowDrawableWrapper;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v3}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    iget v5, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    iget v8, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    add-float/2addr v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 111
    return-void

    .line 96
    .end local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_8a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v9

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    .restart local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    goto :goto_5b
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 117
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 119
    :cond_e
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    return-void
.end method

.method setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .prologue
    .line 133
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_17

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 135
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 138
    :cond_17
    return-void
.end method

.method setPressedTranslationZ(F)V
    .registers 4
    .param p1, "translationZ"    # F

    .prologue
    .line 142
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_17

    .line 143
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setMaxShadowSize(F)V

    .line 145
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 147
    :cond_17
    return-void
.end method

.method setRippleColor(I)V
    .registers 4
    .param p1, "rippleColor"    # I

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    .line 187
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    if-eqz v1, :cond_32

    .line 190
    :cond_c
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 194
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 196
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_32
    return-void
.end method
