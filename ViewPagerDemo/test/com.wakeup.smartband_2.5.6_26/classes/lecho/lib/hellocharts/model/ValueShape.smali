.class public final enum Llecho/lib/hellocharts/model/ValueShape;
.super Ljava/lang/Enum;
.source "ValueShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llecho/lib/hellocharts/model/ValueShape;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

.field public static final enum DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

.field private static final synthetic ENUM$VALUES:[Llecho/lib/hellocharts/model/ValueShape;

.field public static final enum RING:Llecho/lib/hellocharts/model/ValueShape;

.field public static final enum SQUARE:Llecho/lib/hellocharts/model/ValueShape;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Llecho/lib/hellocharts/model/ValueShape;

    const-string/jumbo v1, "CIRCLE"

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/model/ValueShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    new-instance v0, Llecho/lib/hellocharts/model/ValueShape;

    const-string/jumbo v1, "SQUARE"

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/model/ValueShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    new-instance v0, Llecho/lib/hellocharts/model/ValueShape;

    const-string/jumbo v1, "DIAMOND"

    invoke-direct {v0, v1, v4}, Llecho/lib/hellocharts/model/ValueShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/ValueShape;->DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

    new-instance v0, Llecho/lib/hellocharts/model/ValueShape;

    const-string/jumbo v1, "RING"

    invoke-direct {v0, v1, v5}, Llecho/lib/hellocharts/model/ValueShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/ValueShape;->RING:Llecho/lib/hellocharts/model/ValueShape;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Llecho/lib/hellocharts/model/ValueShape;

    sget-object v1, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    aput-object v1, v0, v3

    sget-object v1, Llecho/lib/hellocharts/model/ValueShape;->DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

    aput-object v1, v0, v4

    sget-object v1, Llecho/lib/hellocharts/model/ValueShape;->RING:Llecho/lib/hellocharts/model/ValueShape;

    aput-object v1, v0, v5

    sput-object v0, Llecho/lib/hellocharts/model/ValueShape;->ENUM$VALUES:[Llecho/lib/hellocharts/model/ValueShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/model/ValueShape;
    .registers 2

    .prologue
    .line 1
    const-class v0, Llecho/lib/hellocharts/model/ValueShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/ValueShape;

    return-object v0
.end method

.method public static values()[Llecho/lib/hellocharts/model/ValueShape;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->ENUM$VALUES:[Llecho/lib/hellocharts/model/ValueShape;

    array-length v1, v0

    new-array v2, v1, [Llecho/lib/hellocharts/model/ValueShape;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
