.class public Lcom/wakeup/smartband/ui/alert/ClockAlertActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "ClockAlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static isAddClock:Z


# instance fields
.field private alertAdapter:Lcom/wakeup/smartband/adapter/AlertAdapter;

.field private alertModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/AlertModel;",
            ">;"
        }
    .end annotation
.end field

.field lv_clock:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ec
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;

.field tv_add_clock:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00ed
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

