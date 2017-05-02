.class public Lcom/tencent/mm/sdk/modelpay/PayReq;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
    }
.end annotation


# static fields
.field private static final EXTDATA_MAX_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.PaySdk.PayReq"


# instance fields
.field public appId:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

