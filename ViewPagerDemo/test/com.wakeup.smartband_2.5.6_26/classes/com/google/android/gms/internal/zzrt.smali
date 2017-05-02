.class public final Lcom/google/android/gms/internal/zzrt;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrt$zza;,
        Lcom/google/android/gms/internal/zzrt$zzb;
    }
.end annotation


# instance fields
.field private AD:I

.field private AE:I

.field private AF:I

.field private AG:I

.field private AH:I

.field private AI:Z

.field private AJ:Lcom/google/android/gms/internal/zzrt$zzb;

.field private AK:Landroid/graphics/drawable/Drawable;

.field private AL:Landroid/graphics/drawable/Drawable;

.field private AM:Z

.field private AN:Z

.field private AO:Z

.field private AP:I

.field private Ax:Z

.field private bZ:J

.field private mFrom:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrt;-><init>(Lcom/google/android/gms/internal/zzrt$zzb;)V

    if-nez p1, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzrt$zza;->zzato()Lcom/google/android/gms/internal/zzrt$zza;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzrt$zzb;->AS:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzrt$zzb;->AS:I

    if-nez p2, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/zzrt$zza;->zzato()Lcom/google/android/gms/internal/zzrt$zza;

    move-result-object p2

    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzrt$zzb;->AS:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzrt$zzb;->AS:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzrt$zzb;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/zzrt;->AD:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    iput v1, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->Ax:Z

    new-instance v0, Lcom/google/android/gms/internal/zzrt$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzrt$zzb;-><init>(Lcom/google/android/gms/internal/zzrt$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AM:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzrt;->AM:Z

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AN:Z

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v1, 0x1

    const/high16 v6, 0x3f800000

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzrt;->AD:I

    packed-switch v2, :pswitch_data_84

    :cond_9
    :goto_9
    move v0, v1

    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrt;->Ax:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_60

    if-eqz v2, :cond_18

    if-nez v1, :cond_1b

    :cond_18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    if-ne v1, v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzrt;->bZ:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/zzrt;->AD:I

    goto :goto_a

    :pswitch_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrt;->bZ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrt;->bZ:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzrt;->AG:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_5e

    :goto_4a
    if-eqz v1, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AD:I

    :cond_4e
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzrt;->AE:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    goto :goto_9

    :cond_5e
    move v1, v0

    goto :goto_4a

    :cond_60
    if-eqz v2, :cond_68

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_68
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_72

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_72
    if-lez v1, :cond_7f

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->invalidateSelf()V

    goto :goto_27

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzrt$zzb;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzrt$zzb;->AS:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzrt$zzb;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AJ:Lcom/google/android/gms/internal/zzrt$zzb;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AO:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AP:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AO:Z

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AP:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxk()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AI:Z

    if-nez v0, :cond_26

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->AI:Z

    :cond_26
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxk()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_f
    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzrt;->mFrom:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrt;->AF:I

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AE:I

    iput v1, p0, Lcom/google/android/gms/internal/zzrt;->AH:I

    iput p1, p0, Lcom/google/android/gms/internal/zzrt;->AG:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->AD:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxk()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public zzatn()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->AL:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
