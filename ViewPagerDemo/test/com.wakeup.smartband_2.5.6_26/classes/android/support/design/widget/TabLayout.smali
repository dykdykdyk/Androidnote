.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabStrip;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private mContentInsetStart:I

.field private mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mMode:I

.field private mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private final mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 200
    const v2, 0x7fffffff

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 226
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 228
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->setFillViewport(Z)V

    .line 231
    new-instance v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 232
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 234
    sget-object v2, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 239
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 241
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v3, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 244
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 246
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 248
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 250
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 252
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v3, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 256
    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 258
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 260
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 263
    :cond_9b
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 267
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 268
    .local v1, "selected":I
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 271
    .end local v1    # "selected":I
    :cond_b5
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabMinWidth:I

    .line 272
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 273
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 274
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 275
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 276
    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 281
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$1202(Landroid/support/design/widget/TabLayout;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;I)I
    .registers 3
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic access$1502(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMinWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    return v0
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 7
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 678
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 679
    if-eqz p3, :cond_13

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 682
    :cond_13
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 670
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    if-eqz p2, :cond_13

    .line 672
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 674
    :cond_13
    return-void
.end method

.method private animateToTab(I)V
    .registers 7
    .param p1, "newPosition"    # I

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 762
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 796
    :goto_6
    return-void

    .line 766
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 770
    :cond_1b
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v3, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_6

    .line 774
    :cond_20
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 775
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 777
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_54

    .line 778
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_4a

    .line 779
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 780
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 781
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 782
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TabLayout$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$2;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 790
    :cond_4a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 791
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 795
    :cond_54
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_6
.end method

.method private applyModeAndGravity()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "paddingStart":I
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_f

    .line 863
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 865
    :cond_f
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-static {v1, v0, v3, v3, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 867
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v1, :pswitch_data_2e

    .line 876
    :goto_19
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateTabViewsLayoutParams()V

    .line 877
    return-void

    .line 869
    :pswitch_1d
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    .line 872
    :pswitch_24
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    .line 867
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .registers 10
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    .line 843
    iget v4, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v4, :cond_45

    .line 844
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v4, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 845
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_46

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "nextChild":Landroid/view/View;
    :goto_1d
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 849
    .local v3, "selectedWidth":I
    :goto_23
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 851
    .local v1, "nextWidth":I
    :cond_29
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f000000

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 856
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_45
    return v1

    .line 845
    .restart local v2    # "selectedChild":Landroid/view/View;
    :cond_46
    const/4 v0, 0x0

    goto :goto_1d

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_48
    move v3, v1

    .line 848
    goto :goto_23
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 652
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 653
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 655
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 657
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 659
    :cond_20
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 1537
    new-array v2, v3, [[I

    .line 1538
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 1539
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 1541
    .local v1, "i":I
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1542
    aput p1, v0, v1

    .line 1543
    add-int/lit8 v1, v1, 0x1

    .line 1546
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1547
    aput p0, v0, v1

    .line 1548
    add-int/lit8 v1, v1, 0x1

    .line 1550
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 685
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 687
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 688
    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 635
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$Tab;)V

    .line 636
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 638
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_18

    .line 639
    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 647
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 4
    .param p1, "dps"    # I

    .prologue
    .line 702
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getScrollPosition()F
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "textAppearanceResId"    # I

    .prologue
    .line 1554
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1557
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_a
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    move-result-object v1

    .line 1559
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private removeTabViewAt(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 758
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 759
    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 799
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 800
    .local v2, "tabCount":I
    if-ge p1, v2, :cond_28

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_28

    .line 801
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v2, :cond_28

    .line 802
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_26

    const/4 v3, 0x1

    :goto_20
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 803
    :cond_26
    const/4 v3, 0x0

    goto :goto_20

    .line 806
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    .prologue
    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_7
    if-ge v0, v1, :cond_f

    .line 630
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTab(I)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 632
    :cond_f
    return-void
.end method

.method private updateTab(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 662
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 663
    .local v0, "view":Landroid/support/design/widget/TabLayout$TabView;
    if-eqz v0, :cond_d

    .line 664
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 666
    :cond_d
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 692
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_11

    .line 693
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 694
    const/high16 v0, 0x3f800000

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 699
    :goto_10
    return-void

    .line 696
    :cond_11
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 697
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_10
.end method

.method private updateTabViewsLayoutParams()V
    .registers 4

    .prologue
    .line 880
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 881
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 882
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 883
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 885
    .end local v0    # "child":Landroid/view/View;
    :cond_1e
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 341
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 352
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 380
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 385
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 386
    if-eqz p3, :cond_1a

    .line 387
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 389
    :cond_1a
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .prologue
    .line 361
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 366
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 367
    if-eqz p2, :cond_20

    .line 368
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 370
    :cond_20
    return-void
.end method

.method public getSelectedTabPosition()I
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .prologue
    .line 543
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .registers 2

    .prologue
    .line 521
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 410
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$Tab;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    .line 709
    const/16 v7, 0x30

    invoke-direct {p0, v7}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v8

    add-int v4, v7, v8

    .line 710
    .local v4, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_80

    .line 722
    :goto_1b
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 724
    iget v7, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-ne v7, v10, :cond_51

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v7

    if-ne v7, v10, :cond_51

    .line 727
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 728
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v6

    .line 730
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-le v7, v6, :cond_51

    .line 733
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 735
    .local v1, "childHeightMeasureSpec":I
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 736
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 742
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "width":I
    :cond_51
    iget v5, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 743
    .local v5, "maxTabWidth":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v7

    const/16 v8, 0x38

    invoke-direct {p0, v8}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v8

    sub-int v3, v7, v8

    .line 744
    .local v3, "defaultTabMaxWidth":I
    if-eqz v5, :cond_63

    if-le v5, v3, :cond_64

    .line 746
    :cond_63
    move v5, v3

    .line 749
    :cond_64
    iget v7, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    if-eq v7, v5, :cond_6d

    .line 751
    iput v5, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 752
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 754
    :cond_6d
    return-void

    .line 712
    .end local v3    # "defaultTabMaxWidth":I
    .end local v5    # "maxTabWidth":I
    :sswitch_6e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 715
    goto :goto_1b

    .line 717
    :sswitch_7b
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1b

    .line 710
    :sswitch_data_80
    .sparse-switch
        -0x80000000 -> :sswitch_6e
        0x0 -> :sswitch_7b
    .end sparse-switch
.end method

.method public removeAllTabs()V
    .registers 4

    .prologue
    .line 483
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeAllViews()V

    .line 485
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/design/widget/TabLayout$Tab;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$Tab;

    .line 487
    .local v1, "tab":Landroid/support/design/widget/TabLayout$Tab;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 491
    .end local v1    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_1f
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 492
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 446
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_f
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 451
    return-void
.end method

.method public removeTabAt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 460
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_33

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    .line 461
    .local v3, "selectedTabPosition":I
    :goto_b
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 463
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 464
    .local v2, "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_1c

    .line 465
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 468
    :cond_1c
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 469
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_35

    .line 470
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_33
    move v3, v5

    .line 460
    goto :goto_b

    .line 473
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .restart local v3    # "selectedTabPosition":I
    :cond_35
    if-ne v3, p1, :cond_43

    .line 474
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x0

    :goto_40
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 476
    :cond_43
    return-void

    .line 474
    :cond_44
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_40
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 810
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .prologue
    const/4 v1, -0x1

    .line 813
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-ne v2, p1, :cond_1c

    .line 814
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1b

    .line 815
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_14

    .line 816
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 818
    :cond_14
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 840
    :cond_1b
    :goto_1b
    return-void

    .line 821
    :cond_1c
    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 822
    .local v0, "newPosition":I
    :goto_22
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 823
    if-eqz p2, :cond_3a

    .line 824
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_5d

    :cond_33
    if-eq v0, v1, :cond_5d

    .line 827
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 832
    :cond_3a
    :goto_3a
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_49

    .line 833
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 835
    :cond_49
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 836
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1b

    .line 837
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_1b

    .end local v0    # "newPosition":I
    :cond_5b
    move v0, v1

    .line 821
    goto :goto_22

    .line 829
    .restart local v0    # "newPosition":I
    :cond_5d
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_3a
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .registers 2
    .param p1, "onTabSelectedListener"    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 399
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    :cond_c
    :goto_c
    return-void

    .line 315
    :cond_d
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 320
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 324
    if-eqz p3, :cond_c

    .line 325
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_c
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 290
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 299
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 530
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_9

    .line 531
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 532
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 534
    :cond_9
    return-void
.end method

.method public setTabMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 508
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_9

    .line 509
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 510
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 512
    :cond_9
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 4
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 568
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 569
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 551
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 552
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 554
    :cond_9
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 623
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 624
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 626
    :cond_1c
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 6
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 590
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_f

    .line 591
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    :cond_f
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 598
    new-instance v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 601
    new-instance v2, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v2, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 604
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_39

    .line 605
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 606
    .local v1, "curItem":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v2, v1, :cond_39

    .line 607
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 610
    .end local v1    # "curItem":I
    :cond_39
    return-void
.end method
