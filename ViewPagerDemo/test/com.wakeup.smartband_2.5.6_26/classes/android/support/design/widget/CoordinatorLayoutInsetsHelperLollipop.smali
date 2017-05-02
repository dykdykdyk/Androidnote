.class Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;
.super Ljava/lang/Object;
.source "CoordinatorLayoutInsetsHelperLollipop.java"

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupForWindowInsets(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insetsListener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .prologue
    .line 26
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 30
    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    :cond_e
    return-void
.end method
