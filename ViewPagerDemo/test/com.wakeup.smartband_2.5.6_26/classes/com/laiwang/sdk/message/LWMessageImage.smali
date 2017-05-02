.class public Lcom/laiwang/sdk/message/LWMessageImage;
.super Ljava/lang/Object;
.source "LWMessageImage.java"

# interfaces
.implements Lcom/laiwang/sdk/message/IILWMessageBundle;


# static fields
.field public static IMAGE_TYPE_BYTE:I = 0x0

.field public static IMAGE_TYPE_PATH:I = 0x0

.field public static IMAGE_TYPE_URL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LWMessageImage"

.field private static final THUMB_BUFFER_SIZE:I = 0xa000

.field private static final THUMB_IMGAE_SIZE:I = 0x96


# instance fields
.field protected mImageBitmap:Landroid/graphics/Bitmap;

.field protected mImageDatas:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mImageType:I

.field protected mImageURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/laiwang/sdk/message/LWMessageImage;->IMAGE_TYPE_URL:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/laiwang/sdk/message/LWMessageImage;->IMAGE_TYPE_PATH:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/laiwang/sdk/message/LWMessageImage;->IMAGE_TYPE_BYTE:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

