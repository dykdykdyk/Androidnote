.class public Lcom/amap/api/mapcore/util/dj;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final a:[I

.field static final b:[D

.field public static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x11

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/amap/api/mapcore/util/dj;->a:[I

    .line 63
    new-array v0, v1, [D

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/amap/api/mapcore/util/dj;->b:[D

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/dj;->c:Landroid/os/Handler;

    return-void

    .line 60
    :array_18
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data

    .line 63
    :array_3e
    .array-data 8
        0x40bd1da45a1cac08L
        0x40ad3dfb22d0e560L
        0x409d4554fdf3b646L
        0x408d471f40a2877fL
        0x407d478d4fdf3b64L
        0x406d47a5e353f7cfL
        0x405d47ae147ae148L
        0x404d47ae147ae148L
        0x403d47ae147ae148L
        0x402d47ae147ae148L
        0x401d47ae147ae148L
        0x400d47ae147ae148L
        0x3ffd4395810624ddL
        0x3fed47ae147ae148L
        0x3fdd47ae147ae148L
        0x3fcd2f1a9fbe76c9L
        0x3fbd495182a9930cL
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

