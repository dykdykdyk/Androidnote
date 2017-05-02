.class Landroid/support/design/widget/ValueAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompat;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 156
    return-void
.end method

.method public onAnimationEnd()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 151
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationStart(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 146
    return-void
.end method
