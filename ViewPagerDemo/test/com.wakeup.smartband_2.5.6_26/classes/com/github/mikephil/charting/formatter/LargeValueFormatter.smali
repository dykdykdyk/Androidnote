.class public Lcom/github/mikephil/charting/formatter/LargeValueFormatter;
.super Ljava/lang/Object;
.source "LargeValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# static fields
.field private static final MAX_LENGTH:I = 0x5

.field private static SUFFIX:[Ljava/lang/String;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

