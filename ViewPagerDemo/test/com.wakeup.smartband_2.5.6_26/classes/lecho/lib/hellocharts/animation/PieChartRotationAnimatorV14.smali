.class public Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV14.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Llecho/lib/hellocharts/animation/PieChartRotationAnimator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field private animator:Landroid/animation/ValueAnimator;

.field private final chart:Llecho/lib/hellocharts/view/PieChartView;

.field private startRotation:F

.field private targetRotation:F


# direct methods
