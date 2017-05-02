.class public interface abstract Llecho/lib/hellocharts/renderer/ChartRenderer;
.super Ljava/lang/Object;
.source "ChartRenderer.java"


# virtual methods
.method public abstract checkTouch(FF)Z
.end method

.method public abstract clearTouch()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawUnclipped(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
.end method

.method public abstract getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
.end method

.method public abstract getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;
.end method

.method public abstract isTouched()Z
.end method

.method public abstract isViewportCalculationEnabled()Z
.end method

.method public abstract onChartDataChanged()V
.end method

.method public abstract onChartSizeChanged()V
.end method

.method public abstract onChartViewportChanged()V
.end method

.method public abstract resetRenderer()V
.end method

.method public abstract selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V
.end method

.method public abstract setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
.end method

.method public abstract setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
.end method

.method public abstract setViewportCalculationEnabled(Z)V
.end method
