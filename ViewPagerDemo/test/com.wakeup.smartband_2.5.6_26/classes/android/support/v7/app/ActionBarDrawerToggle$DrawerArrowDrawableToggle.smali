.class Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerArrowDrawableToggle"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "themedContext"    # Landroid/content/Context;

    .prologue
    .line 471
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 472
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    .line 473
    return-void
.end method


# virtual methods
.method public getPosition()F
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->getProgress()F

    move-result v0

    return v0
.end method

.method public setPosition(F)V
    .registers 3
    .param p1, "position"    # F

    .prologue
    .line 476
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    .line 481
    :cond_a
    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setProgress(F)V

    .line 482
    return-void

    .line 478
    :cond_e
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    goto :goto_a
.end method
