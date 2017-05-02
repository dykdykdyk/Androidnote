.class synthetic Lcom/github/mikephil/charting/components/Legend$1;
.super Ljava/lang/Object;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

.field static final synthetic $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 801
    invoke-static {}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->values()[Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    :try_start_9
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_de

    :goto_14
    :try_start_14
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_db

    .line 446
    :goto_1f
    invoke-static {}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->values()[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    :try_start_28
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_d8

    :goto_33
    :try_start_33
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_d5

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_d2

    :goto_49
    :try_start_49
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_d0

    :goto_54
    :try_start_54
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_ce

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_cc

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_ca

    :goto_75
    :try_start_75
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_81} :catch_c8

    :goto_81
    :try_start_81
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8d} :catch_c6

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_99} :catch_c4

    :goto_99
    :try_start_99
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a5} :catch_c2

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b1} :catch_c0

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bd} :catch_be

    :goto_bd
    return-void

    :catch_be
    move-exception v0

    goto :goto_bd

    :catch_c0
    move-exception v0

    goto :goto_b1

    :catch_c2
    move-exception v0

    goto :goto_a5

    :catch_c4
    move-exception v0

    goto :goto_99

    :catch_c6
    move-exception v0

    goto :goto_8d

    :catch_c8
    move-exception v0

    goto :goto_81

    :catch_ca
    move-exception v0

    goto :goto_75

    :catch_cc
    move-exception v0

    goto :goto_6a

    :catch_ce
    move-exception v0

    goto :goto_5f

    :catch_d0
    move-exception v0

    goto :goto_54

    :catch_d2
    move-exception v0

    goto/16 :goto_49

    :catch_d5
    move-exception v0

    goto/16 :goto_3e

    :catch_d8
    move-exception v0

    goto/16 :goto_33

    .line 801
    :catch_db
    move-exception v0

    goto/16 :goto_1f

    :catch_de
    move-exception v0

    goto/16 :goto_14
.end method
