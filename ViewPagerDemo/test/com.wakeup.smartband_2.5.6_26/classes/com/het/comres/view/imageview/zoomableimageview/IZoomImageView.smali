.class public interface abstract Lcom/het/comres/view/imageview/zoomableimageview/IZoomImageView;
.super Ljava/lang/Object;
.source "IZoomImageView.java"


# virtual methods
.method public abstract canZoom()Z
.end method

.method public abstract getDisplayRect()Landroid/graphics/RectF;
.end method

.method public abstract getMaxScale()F
.end method

.method public abstract getMidScale()F
.end method

.method public abstract getMinScale()F
.end method

.method public abstract getScale()F
.end method

.method public abstract getScaleType()Landroid/widget/ImageView$ScaleType;
.end method

.method public abstract setAllowParentInterceptOnEdge(Z)V
.end method

.method public abstract setMaxScale(F)V
.end method

.method public abstract setMidScale(F)V
.end method

.method public abstract setMinScale(F)V
.end method

.method public abstract setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end method

.method public abstract setOnMatrixChangeListener(Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnMatrixChangedListener;)V
.end method

.method public abstract setOnPhotoTapListener(Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnPhotoTapListener;)V
.end method

.method public abstract setOnViewTapListener(Lcom/het/comres/view/imageview/zoomableimageview/ZoomImageViewAttacher$OnViewTapListener;)V
.end method

.method public abstract setScaleType(Landroid/widget/ImageView$ScaleType;)V
.end method

.method public abstract setZoomable(Z)V
.end method

.method public abstract zoomTo(FFF)V
.end method
