.class public final Lcom/wakeup/smartband/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_WIDTH:I = 0xa

.field private static final MIDDLE_LINE_PADDING:I = 0x5

.field private static final MIDDLE_LINE_WIDTH:I = 0x6

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "aaaa"

.field private static final TEXT_PADDING_TOP:I = 0x1e

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field private ScreenRate:I

.field private bitmap:Landroid/graphics/Bitmap;

.field isFirst:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private screenHieght:I

.field private screenWidth:I

.field private slideBottom:I

.field private slideTop:I

.field private textMap:Landroid/graphics/Bitmap;


# direct methods
