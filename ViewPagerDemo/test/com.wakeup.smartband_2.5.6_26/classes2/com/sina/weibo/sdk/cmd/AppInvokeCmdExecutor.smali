.class Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;
.super Ljava/lang/Object;
.source "AppInvokeCmdExecutor.java"

# interfaces
.implements Lcom/sina/weibo/sdk/cmd/CmdExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/cmd/CmdExecutor",
        "<",
        "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2

.field private static final SHOW_NOTICIATION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;


# direct methods
