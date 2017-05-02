.class public Llecho/lib/hellocharts/gesture/PieChartTouchHandler;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.source "PieChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;,
        Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# static fields
.field public static final FLING_VELOCITY_DOWNSCALE:I = 0x4


# instance fields
.field private isRotationEnabled:Z

.field protected pieChart:Llecho/lib/hellocharts/view/PieChartView;

.field protected scroller:Landroid/support/v4/widget/ScrollerCompat;


# direct methods
