.class public final Lcom/google/android/gms/internal/zzru;
.super Landroid/widget/ImageView;


# instance fields
.field private AT:Landroid/net/Uri;

.field private AU:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public zzatp()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzru;->AU:I

    return v0
.end method

.method public zzgj(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzru;->AU:I

    return-void
.end method

.method public zzq(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzru;->AT:Landroid/net/Uri;

    return-void
.end method
