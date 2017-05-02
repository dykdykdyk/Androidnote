.class public final Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;
.super Ljava/lang/Object;
.source "QRCodeDecoderMetaData.java"


# instance fields
.field private final mirrored:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .param p1, "mirrored"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    .line 33
    return-void
.end method


# virtual methods
.method public applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V
    .registers 7
    .param p1, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 48
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_d

    .line 55
    :cond_c
    :goto_c
    return-void

    .line 51
    :cond_d
    aget-object v0, p1, v3

    .line 52
    .local v0, "bottomLeft":Lcom/google/zxing/ResultPoint;
    aget-object v1, p1, v4

    aput-object v1, p1, v3

    .line 53
    aput-object v0, p1, v4

    goto :goto_c
.end method

.method public isMirrored()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    return v0
.end method
