.class public Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;
.super Lcom/tencent/mm/sdk/modelbase/BaseResp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelmsg/SendAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# static fields
.field private static final LENGTH_LIMIT:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Resp"


# instance fields
.field public code:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

