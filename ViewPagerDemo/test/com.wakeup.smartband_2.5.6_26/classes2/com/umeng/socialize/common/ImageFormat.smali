.class public Lcom/umeng/socialize/common/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final FORMAT_BMP:I = 0x3

.field public static final FORMAT_GIF:I = 0x1

.field public static final FORMAT_IFF:I = 0x5

.field public static final FORMAT_JPEG:I = 0x0

.field public static final FORMAT_NAMES:[Ljava/lang/String;

.field public static final FORMAT_PBM:I = 0x7

.field public static final FORMAT_PCX:I = 0x4

.field public static final FORMAT_PGM:I = 0x8

.field public static final FORMAT_PNG:I = 0x2

.field public static final FORMAT_PPM:I = 0x9

.field public static final FORMAT_PSD:I = 0xa

.field public static final FORMAT_RAS:I = 0x6

.field public static final FORMAT_SWF:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "gif"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "pcx"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "iff"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ras"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "pbm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pgm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ppm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "psd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "swf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/socialize/common/ImageFormat;->FORMAT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

