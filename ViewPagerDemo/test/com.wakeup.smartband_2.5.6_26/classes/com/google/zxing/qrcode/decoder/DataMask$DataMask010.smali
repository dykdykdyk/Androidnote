.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask010"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/zxing/qrcode/decoder/DataMask$1;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 108
    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
