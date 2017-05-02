.class public final enum Llecho/lib/hellocharts/gesture/ZoomType;
.super Ljava/lang/Enum;
.source "ZoomType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llecho/lib/hellocharts/gesture/ZoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

.field public static final enum VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomType;

    const-string/jumbo v1, "HORIZONTAL_AND_VERTICAL"

    invoke-direct {v0, v1, v4}, Llecho/lib/hellocharts/gesture/ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Llecho/lib/hellocharts/gesture/ZoomType;

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v3

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    aput-object v1, v0, v4

    sput-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->ENUM$VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/gesture/ZoomType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/gesture/ZoomType;

    return-object v0
.end method

.method public static values()[Llecho/lib/hellocharts/gesture/ZoomType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->ENUM$VALUES:[Llecho/lib/hellocharts/gesture/ZoomType;

    array-length v1, v0

    new-array v2, v1, [Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
