.class public Lcom/github/mikephil/charting/utils/ColorTemplate;
.super Ljava/lang/Object;
.source "ColorTemplate.java"


# static fields
.field public static final COLORFUL_COLORS:[I

.field public static final COLOR_NONE:I = 0x112233

.field public static final COLOR_SKIP:I = 0x112234

.field public static final JOYFUL_COLORS:[I

.field public static final LIBERTY_COLORS:[I

.field public static final MATERIAL_COLORS:[I

.field public static final PASTEL_COLORS:[I

.field public static final VORDIPLOM_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xcf

    const/16 v2, 0xf8

    const/16 v3, 0xf6

    .line 35
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x94

    const/16 v2, 0xd4

    const/16 v3, 0xd4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x88

    const/16 v2, 0xb4

    const/16 v3, 0xbb

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x76

    const/16 v2, 0xae

    const/16 v3, 0xaf

    .line 36
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x2a

    const/16 v2, 0x6d

    const/16 v3, 0x82

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->LIBERTY_COLORS:[I

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xd9

    const/16 v2, 0x50

    const/16 v3, 0x8a

    .line 39
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xfe

    const/16 v2, 0x95

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xfe

    const/16 v2, 0xf7

    const/16 v3, 0x78

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x6a

    const/16 v2, 0xa7

    const/16 v3, 0x86

    .line 40
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x35

    const/16 v2, 0xc2

    const/16 v3, 0xd1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->JOYFUL_COLORS:[I

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x40

    const/16 v2, 0x59

    const/16 v3, 0x80

    .line 43
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x95

    const/16 v2, 0xa5

    const/16 v3, 0x7c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xd9

    const/16 v2, 0xb8

    const/16 v3, 0xa2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0xbf

    const/16 v2, 0x86

    const/16 v3, 0x86

    .line 44
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xb3

    const/16 v2, 0x30

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->PASTEL_COLORS:[I

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xc1

    const/16 v2, 0x25

    const/16 v3, 0x52

    .line 47
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xff

    const/16 v2, 0x66

    invoke-static {v1, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xf5

    const/16 v2, 0xc7

    invoke-static {v1, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x6a

    const/16 v2, 0x96

    const/16 v3, 0x1f

    .line 48
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xb3

    const/16 v2, 0x64

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->COLORFUL_COLORS:[I

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xc0

    const/16 v2, 0xff

    const/16 v3, 0x8c

    .line 51
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xff

    const/16 v2, 0xf7

    const/16 v3, 0x8c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xff

    const/16 v2, 0xd0

    const/16 v3, 0x8c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    .line 52
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xff

    const/16 v2, 0x8c

    const/16 v3, 0x9d

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->VORDIPLOM_COLORS:[I

    .line 54
    new-array v0, v8, [I

    const-string/jumbo v1, "#2ecc71"

    .line 55
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string/jumbo v1, "#f1c40f"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const-string/jumbo v1, "#e74c3c"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string/jumbo v1, "#3498db"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->MATERIAL_COLORS:[I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

