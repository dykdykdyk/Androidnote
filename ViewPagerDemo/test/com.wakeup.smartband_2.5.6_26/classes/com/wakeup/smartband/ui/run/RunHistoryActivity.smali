.class public Lcom/wakeup/smartband/ui/run/RunHistoryActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "RunHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/run/RunHistoryActivity$GetPathRecordListTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunHistoryActivity"


# instance fields
.field private DbHepler:Lcom/wakeup/smartband/db/DbAdapter;

.field private adapter:Lcom/wakeup/smartband/adapter/RunHistoryAdadpter;

.field private listdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/PathRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private pathRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/PathRecord;",
            ">;"
        }
    .end annotation
.end field

.field progress_bar_history:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f015a
    .end annotation
.end field

.field swipemenulistview:Lcom/baoyz/swipemenulistview/SwipeMenuListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0159
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

