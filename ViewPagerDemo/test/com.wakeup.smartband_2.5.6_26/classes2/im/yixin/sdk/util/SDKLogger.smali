.class public Lim/yixin/sdk/util/SDKLogger;
.super Ljava/lang/Object;


# static fields
.field private static isOpenErrorLogger:Z

.field private static isOpenInfoLogger:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenInfoLogger:Z

    const/4 v0, 0x1

    sput-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenErrorLogger:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

