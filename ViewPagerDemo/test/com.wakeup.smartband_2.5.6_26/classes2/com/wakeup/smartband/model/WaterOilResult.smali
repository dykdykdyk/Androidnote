.class public Lcom/wakeup/smartband/model/WaterOilResult;
.super Lcom/wakeup/smartband/model/BaseAvg;
.source "WaterOilResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/model/WaterOilResult$WaterOilCheckRecord;
    }
.end annotation


# instance fields
.field private measureRec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/WaterOilResult$WaterOilCheckRecord;",
            ">;"
        }
    .end annotation
.end field

.field private wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

