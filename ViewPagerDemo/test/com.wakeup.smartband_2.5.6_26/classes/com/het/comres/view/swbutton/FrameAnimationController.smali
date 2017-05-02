.class public Lcom/het/comres/view/swbutton/FrameAnimationController;
.super Ljava/lang/Object;
.source "FrameAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/comres/view/swbutton/FrameAnimationController$AnimationHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcom/het/comres/view/swbutton/FrameAnimationController$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/het/comres/view/swbutton/FrameAnimationController$AnimationHandler;-><init>(Lcom/het/comres/view/swbutton/FrameAnimationController$1;)V

    sput-object v0, Lcom/het/comres/view/swbutton/FrameAnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

