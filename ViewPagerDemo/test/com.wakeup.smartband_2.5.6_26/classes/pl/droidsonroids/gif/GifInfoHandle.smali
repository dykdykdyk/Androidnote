.class final Lpl/droidsonroids/gif/GifInfoHandle;
.super Ljava/lang/Object;
.source "GifInfoHandle.java"


# static fields
.field static final NULL_INFO:Lpl/droidsonroids/gif/GifInfoHandle;


# instance fields
.field final frameCount:I

.field private volatile gifInfoPtr:J

.field final height:I

.field final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 37
    new-instance v1, Lpl/droidsonroids/gif/GifInfoHandle;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(JIII)V

    sput-object v1, Lpl/droidsonroids/gif/GifInfoHandle;->NULL_INFO:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 40
    const-string/jumbo v0, "pl_droidsonroids_gif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

