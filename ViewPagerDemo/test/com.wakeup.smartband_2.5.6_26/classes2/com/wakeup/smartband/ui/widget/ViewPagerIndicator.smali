.class public Lcom/wakeup/smartband/ui/widget/ViewPagerIndicator;
.super Landroid/widget/RelativeLayout;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/ViewPagerIndicator$ImageViewShape;
    }
.end annotation


# static fields
.field private static final ITEM_MARGIN_DP:I = 0xa

.field private static final ITEM_WIDTH_DP:I = 0x6

.field private static final mChooseColorDef:I

.field private static final mUnChooseColorDef:I


# instance fields
.field private mChooseShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private mIndicator:Landroid/widget/ImageView;

.field private mItemChooseColor:I

.field private mItemMargin:I

.field private mItemUnChooseColor:I

.field private mItemWidth:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mResources:Landroid/content/res/Resources;

.field private mUnChooseShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "#FFEC1B23"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/wakeup/smartband/ui/widget/ViewPagerIndicator;->mChooseColorDef:I

    .line 30
    const-string/jumbo v0, "#FFAAAAAA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/wakeup/smartband/ui/widget/ViewPagerIndicator;->mUnChooseColorDef:I

    return-void
.end method

