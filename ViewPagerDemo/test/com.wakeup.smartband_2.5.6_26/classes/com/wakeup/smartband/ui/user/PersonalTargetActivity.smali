.class public Lcom/wakeup/smartband/ui/user/PersonalTargetActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "PersonalTargetActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PersonalTargetActivity"


# instance fields
.field private datalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field loopview:Lcom/wakeup/smartband/pickerview/targetView/TargetView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f014c
    .end annotation
.end field

.field mCommonTopBar:Lcom/het/comres/widget/CommonTopBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f01c8
    .end annotation
.end field

.field private mUserModel:Lcom/wakeup/smartband/model/UserModel;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 2

