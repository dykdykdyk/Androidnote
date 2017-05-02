.class public final Lpl/droidsonroids/gif/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static freezesAnimation:I

.field public static gifSource:I

.field public static isOpaque:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const v0, 0x7f010002

    sput v0, Lpl/droidsonroids/gif/R$attr;->freezesAnimation:I

    .line 24
    const/high16 v0, 0x7f010000

    sput v0, Lpl/droidsonroids/gif/R$attr;->gifSource:I

    .line 32
    const v0, 0x7f010001

    sput v0, Lpl/droidsonroids/gif/R$attr;->isOpaque:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

