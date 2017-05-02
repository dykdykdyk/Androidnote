.class public Lcom/wakeup/smartband/model/SkinSolution;
.super Ljava/lang/Object;
.source "SkinSolution.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/model/SkinSolution$SkinTestRecord;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private diet:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private problemPrediction:Ljava/lang/String;

.field private skinGuide:Ljava/lang/String;

.field private skinMeasureRec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/SkinSolution$SkinTestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sleep:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

