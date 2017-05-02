.class public Lcom/wakeup/smartband/model/SkinCheckResultModelForQuery;
.super Lcom/wakeup/smartband/model/BaseAvg;
.source "SkinCheckResultModelForQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/model/SkinCheckResultModelForQuery$SkinTestRecord;
    }
.end annotation


# instance fields
.field private elasticityAreaAvg:Ljava/lang/String;

.field private elasticityTrend:Ljava/lang/String;

.field private lastWater:F

.field private oilAreaAvg:Ljava/lang/String;

.field private oilAvgT:Ljava/lang/String;

.field private oilAvgU:Ljava/lang/String;

.field private oilTrend:Ljava/lang/String;

.field private skinAge:Ljava/lang/String;

.field private skinAreaRank:Ljava/lang/String;

.field private skinMeasureRec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/SkinCheckResultModelForQuery$SkinTestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private skinProblem:Ljava/lang/String;

.field private skinSolution:Lcom/wakeup/smartband/model/SkinSolution;

.field private skinType:Ljava/lang/String;

.field private tagList:[Ljava/lang/String;

.field private waterAreaAvg:Ljava/lang/String;

.field private waterAvgT:Ljava/lang/String;

.field private waterAvgU:Ljava/lang/String;

.field private waterTrend:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

