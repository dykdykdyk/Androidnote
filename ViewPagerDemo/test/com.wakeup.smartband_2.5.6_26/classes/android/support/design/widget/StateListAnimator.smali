.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field private mRunningAnimation:Landroid/view/animation/Animation;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 31
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 34
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 172
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/StateListAnimator;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/StateListAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/StateListAnimator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private cancel()V
    .registers 4

    .prologue
    .line 143
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_18

    .line 144
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_15

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 148
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 150
    .end local v0    # "view":Landroid/view/View;
    :cond_18
    return-void
.end method

.method private clearTarget()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_24

    .line 98
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/StateListAnimator$Tuple;

    iget-object v0, v4, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    .line 99
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-ne v4, v0, :cond_21

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 103
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_24
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 105
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .registers 4
    .param p1, "match"    # Landroid/support/design/widget/StateListAnimator$Tuple;

    .prologue
    .line 134
    iget-object v1, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 138
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    :cond_f
    return-void
.end method


# virtual methods
.method public addState([ILandroid/view/animation/Animation;)V
    .registers 5
    .param p1, "specs"    # [I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 61
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/StateListAnimator$1;)V

    .line 62
    .local v0, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method getRunningAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getTarget()Landroid/view/View;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_5
.end method

.method getTuples()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jumpToCurrentState()V
    .registers 4

    .prologue
    .line 164
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_15

    .line 165
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_15

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 170
    .end local v0    # "view":Landroid/view/View;
    :cond_15
    return-void
.end method

.method setState([I)V
    .registers 7
    .param p1, "state"    # [I

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "match":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 115
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 116
    .local v3, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 117
    move-object v2, v3

    .line 121
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_1b
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v2, v4, :cond_23

    .line 131
    :cond_1f
    :goto_1f
    return-void

    .line 114
    .restart local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 124
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_23
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v4, :cond_2a

    .line 125
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 127
    :cond_2a
    iput-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 128
    if-eqz v2, :cond_1f

    .line 129
    invoke-direct {p0, v2}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    goto :goto_1f
.end method

.method setTarget(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_7

    .line 92
    :cond_6
    :goto_6
    return-void

    .line 86
    :cond_7
    if-eqz v0, :cond_c

    .line 87
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->clearTarget()V

    .line 89
    :cond_c
    if-eqz p1, :cond_6

    .line 90
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    goto :goto_6
.end method
