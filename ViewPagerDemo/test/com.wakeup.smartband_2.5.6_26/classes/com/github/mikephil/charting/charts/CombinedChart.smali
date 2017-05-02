.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CombinedChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/CombinedData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field protected mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field private mDrawValueAboveBar:Z

.field protected mHighlightFullBarEnabled:Z


# direct methods
