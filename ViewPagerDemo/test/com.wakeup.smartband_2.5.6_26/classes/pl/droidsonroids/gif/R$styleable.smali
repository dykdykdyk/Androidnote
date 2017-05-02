.class public final Lpl/droidsonroids/gif/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GifTextureView:[I

.field public static GifTextureView_gifSource:I

.field public static GifTextureView_isOpaque:I

.field public static final GifView:[I

.field public static GifView_freezesAnimation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    .line 60
    sput v2, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_gifSource:I

    .line 74
    sput v1, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_isOpaque:I

    .line 85
    new-array v0, v1, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    .line 101
    sput v2, Lpl/droidsonroids/gif/R$styleable;->GifView_freezesAnimation:I

    return-void

    .line 47
    :array_1a
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

