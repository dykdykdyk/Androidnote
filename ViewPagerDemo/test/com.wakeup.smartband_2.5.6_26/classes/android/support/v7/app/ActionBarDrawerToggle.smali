.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;,
        Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 181
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 183
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p3, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p5, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .local p4, "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 194
    if-eqz p2, :cond_37

    .line 195
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    .line 196
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_1b
    iput-object p3, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 218
    iput p6, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 219
    if-nez p4, :cond_69

    .line 220
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    .line 226
    .end local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    :goto_30
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    .restart local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    :cond_37
    instance-of v0, p1, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_45

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_1b

    .line 208
    :cond_45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_53

    .line 209
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_1b

    .line 210
    :cond_53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_61

    .line 211
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_1b

    .line 213
    :cond_61
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_1b

    .line 223
    :cond_69
    check-cast p4, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    .end local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    iput-object p4, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    goto :goto_30
.end method

.method static synthetic access$000(Landroid/support/v7/app/ActionBarDrawerToggle;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarDrawerToggle;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarDrawerToggle;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarDrawerToggle;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private toggle()V
    .registers 3

    .prologue
    const v1, 0x800003

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 286
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 290
    :goto_10
    return-void

    .line 288
    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_10
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_a

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 265
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .registers 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 406
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_f

    .line 407
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 409
    :cond_f
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 391
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_10

    .line 392
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 394
    :cond_10
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 379
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .registers 2
    .param p1, "newState"    # I

    .prologue
    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 277
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_14

    .line 278
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method setActionBarDescription(I)V
    .registers 3
    .param p1, "contentDescRes"    # I

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 461
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 451
    const-string/jumbo v0, "ActionBarDrawerToggle"

    const-string/jumbo v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 456
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 457
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_1c

    .line 356
    if-eqz p1, :cond_20

    .line 357
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_17
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    :goto_1a
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 365
    :cond_1c
    return-void

    .line 357
    :cond_1d
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_17

    .line 361
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1a
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_d

    .line 331
    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    :cond_d
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 304
    if-nez p1, :cond_15

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 306
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 312
    :goto_b
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_14

    .line 313
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    :cond_14
    return-void

    .line 308
    :cond_15
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_b
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 446
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 447
    return-void
.end method

.method public syncState()V
    .registers 4

    .prologue
    const v2, 0x800003

    .line 239
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 240
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 244
    :goto_12
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_27

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_24
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    :cond_27
    return-void

    .line 242
    :cond_28
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_12

    .line 245
    :cond_2f
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_24
.end method
