.class public Lcom/het/common/utils/HandlerUtil;
.super Ljava/lang/Object;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/common/utils/HandlerUtil$StaticHandler;,
        Lcom/het/common/utils/HandlerUtil$MessageListener;
    }
.end annotation


# static fields
.field private static mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/high16 v0, 0x1000000

    sput v0, Lcom/het/common/utils/HandlerUtil;->mId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

