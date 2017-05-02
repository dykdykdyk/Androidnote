.class public Llecho/lib/hellocharts/util/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field public static final POW10:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

