.class public Lcom/wakeup/smartband/utils/AbAppUtil;
.super Ljava/lang/Object;
.source "AbAppUtil.java"


# static fields
.field public static mProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/wakeup/smartband/utils/AbAppUtil;->mProcessList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

