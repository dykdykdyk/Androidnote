.class public Lcom/het/comres/widget/ColorToggleButton;
.super Landroid/widget/RelativeLayout;
.source "ColorToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/widget/ColorToggleButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final CLOSE:I = -0x1

.field private static final DURATION:J = 0x12cL

.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field public static final OPEN:I = 0x1

.field public static final RUN:I = 0x0

.field private static final TOGGLE_BUTTON:Ljava/lang/String; = "COLORBUTTON"


# instance fields
.field private mAnimBall:Lcom/het/comres/widget/AnimBall;

.field private mBallAnimStartLeft:I

.field private mBallAnimStopLeft:I

.field private mBallColor:I

.field private mBallScrollMaxX:I

.field private mBallStartLeft:I

.field private mBallStopLeft:I

.field private mBallWidth:I

.field private mBgSelColor:I

.field private mBgUnSelColor:I

.field private mBgView:Lcom/het/comres/widget/ColorChangeBgView;

.field private mFirstScreenX:I

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mOnCheckedChangeListener:Lcom/het/comres/widget/ColorToggleButton$OnCheckedChangeListener;

.field private mPaddingFactor:F

.field private mScreenLocation:[I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-string/jumbo v0, "Toggle"

    const-string/jumbo v1, "Toggle"

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/het/comres/widget/ColorToggleButton;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

