.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendForm;
.super Ljava/lang/Enum;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/mikephil/charting/components/Legend$LegendForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public static final enum SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string/jumbo v1, "SQUARE"

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string/jumbo v1, "CIRCLE"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const-string/jumbo v1, "LINE"

    invoke-direct {v0, v1, v4}, Lcom/github/mikephil/charting/components/Legend$LegendForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method
