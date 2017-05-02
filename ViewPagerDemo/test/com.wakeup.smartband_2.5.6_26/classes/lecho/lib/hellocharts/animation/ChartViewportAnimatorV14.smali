.class public Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV14.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Llecho/lib/hellocharts/animation/ChartViewportAnimator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field private animator:Landroid/animation/ValueAnimator;

.field private final chart:Llecho/lib/hellocharts/view/Chart;

.field private newViewport:Llecho/lib/hellocharts/model/Viewport;

.field private startViewport:Llecho/lib/hellocharts/model/Viewport;

.field private targetViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
