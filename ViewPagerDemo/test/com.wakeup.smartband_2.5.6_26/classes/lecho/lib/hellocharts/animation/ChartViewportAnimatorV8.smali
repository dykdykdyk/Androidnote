.class public Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV8.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartViewportAnimator;


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field final chart:Llecho/lib/hellocharts/view/Chart;

.field private duration:J

.field final handler:Landroid/os/Handler;

.field final interpolator:Landroid/view/animation/Interpolator;

.field isAnimationStarted:Z

.field private newViewport:Llecho/lib/hellocharts/model/Viewport;

.field private final runnable:Ljava/lang/Runnable;

.field start:J

.field private startViewport:Llecho/lib/hellocharts/model/Viewport;

.field private targetViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
