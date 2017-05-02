.class Lcom/wakeup/smartband/ui/fragment/HomeFragment$GetDataTask;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# instance fields
.field boModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field

.field bpModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field

.field hrModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field

.field sleepWeekModel:Lcom/wakeup/smartband/model/SleepWeekModel;

.field stepAndSleepModel:Lcom/wakeup/smartband/model/StepAndSleepModel;

.field final synthetic this$0:Lcom/wakeup/smartband/ui/fragment/HomeFragment;

.field private tiredModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
