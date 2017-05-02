.class public Lcom/autonavi/amap/mapcore/AMapNativeRenderer;
.super Ljava/lang/Object;
.source "AMapNativeRenderer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 23
    :goto_6
    return-void

    .line 19
    :catch_7
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

