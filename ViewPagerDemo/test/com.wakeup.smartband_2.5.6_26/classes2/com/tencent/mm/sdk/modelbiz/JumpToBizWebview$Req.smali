.class public Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final EXT_MSG_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.JumpToBizWebview.Req"


# instance fields
.field public extMsg:Ljava/lang/String;

.field public scene:I

.field public toUserName:Ljava/lang/String;

.field public webType:I


# direct methods
.method public constructor <init>()V
    .registers 2

