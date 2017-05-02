.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .registers 2

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p2, "x1"    # Landroid/support/design/widget/CollapsingToolbarLayout$1;

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 14
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    .line 856
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # setter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I
    invoke-static {v8, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    .line 858
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v8

    if-eqz v8, :cond_3c

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 859
    .local v3, "insetTop":I
    :goto_17
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v6

    .line 861
    .local v6, "scrollRange":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v7

    .local v7, "z":I
    :goto_22
    if-ge v2, v7, :cond_5e

    .line 862
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 863
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 864
    .local v4, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    # invokes: Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 866
    .local v5, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    iget v8, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_ca

    .line 861
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 858
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .end local v6    # "scrollRange":I
    .end local v7    # "z":I
    :cond_3c
    const/4 v3, 0x0

    goto :goto_17

    .line 868
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .restart local v6    # "scrollRange":I
    .restart local v7    # "z":I
    :pswitch_3e
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v8, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lt v8, v9, :cond_39

    .line 869
    neg-int v8, p2

    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_39

    .line 873
    :pswitch_51
    neg-int v8, p2

    int-to-float v8, v8

    iget v9, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_39

    .line 880
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :cond_5e
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_6e

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_83

    .line 881
    :cond_6e
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, p2

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v9

    add-int/2addr v9, v3

    if-ge v8, v9, :cond_bf

    .line 882
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # invokes: Landroid/support/design/widget/CollapsingToolbarLayout;->showScrim()V
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    .line 888
    :cond_83
    :goto_83
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_92

    if-lez v3, :cond_92

    .line 889
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 893
    :cond_92
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v1, v8, v3

    .line 895
    .local v1, "expandRange":I
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$900(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 898
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v6, :cond_c5

    .line 901
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v8

    invoke-static {p1, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 906
    :goto_be
    return-void

    .line 884
    .end local v1    # "expandRange":I
    :cond_bf
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # invokes: Landroid/support/design/widget/CollapsingToolbarLayout;->hideScrim()V
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$800(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    goto :goto_83

    .line 904
    .restart local v1    # "expandRange":I
    :cond_c5
    const/4 v8, 0x0

    invoke-static {p1, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_be

    .line 866
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_51
    .end packed-switch
.end method
