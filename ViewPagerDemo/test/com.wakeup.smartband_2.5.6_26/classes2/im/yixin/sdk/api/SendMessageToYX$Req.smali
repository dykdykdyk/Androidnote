.class public Lim/yixin/sdk/api/SendMessageToYX$Req;
.super Lim/yixin/sdk/api/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/SendMessageToYX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field public static final YXSceneSession:I = 0x0

.field public static final YXSceneTimeline:I = 0x1


# instance fields
.field public message:Lim/yixin/sdk/api/YXMessage;

.field public scene:I


# direct methods
.method public constructor <init>()V
    .registers 1

