.class public abstract Lcom/github/mikephil/charting/listener/ChartTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field protected static final DRAG:I = 0x1

.field protected static final NONE:I = 0x0

.field protected static final PINCH_ZOOM:I = 0x4

.field protected static final POST_ZOOM:I = 0x5

.field protected static final ROTATE:I = 0x6

.field protected static final X_ZOOM:I = 0x2

.field protected static final Y_ZOOM:I = 0x3


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field protected mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mTouchMode:I


# direct methods
