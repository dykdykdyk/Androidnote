.class Lcom/wakeup/smartband/ui/fragment/tired/TiredDayFragment$ReadDbTask;
.super Landroid/os/AsyncTask;
.source "TiredDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/fragment/tired/TiredDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field bloodDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field taskModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wakeup/smartband/ui/fragment/tired/TiredDayFragment;


# direct methods
