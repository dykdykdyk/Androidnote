.class Lcom/wakeup/smartband/ui/fragment/sleep/SleepDayFragment$ReadDbTask;
.super Landroid/os/AsyncTask;
.source "SleepDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/fragment/sleep/SleepDayFragment;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field TodayModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/SleepModel;",
            ">;"
        }
    .end annotation
.end field

.field deep_sleep_time:J

.field shadow_sleep:J

.field sleepWeekModel:Lcom/wakeup/smartband/model/SleepWeekModel;

.field sleep_time:J

.field final synthetic this$0:Lcom/wakeup/smartband/ui/fragment/sleep/SleepDayFragment;

.field wakeTimes:I


# direct methods
