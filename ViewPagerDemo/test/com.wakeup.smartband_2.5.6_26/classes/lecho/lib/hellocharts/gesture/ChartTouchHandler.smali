.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.super Ljava/lang/Object;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;,
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# instance fields
.field protected chart:Llecho/lib/hellocharts/view/Chart;

.field protected chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

.field protected chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

.field protected computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected isScrollEnabled:Z

.field protected isValueSelectionEnabled:Z

.field protected isValueTouchEnabled:Z

.field protected isZoomEnabled:Z

.field protected oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

.field protected scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected viewParent:Landroid/view/ViewParent;


# direct methods
