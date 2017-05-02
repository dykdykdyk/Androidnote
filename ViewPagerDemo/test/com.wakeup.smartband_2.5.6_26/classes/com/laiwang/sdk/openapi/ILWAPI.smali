.class public interface abstract Lcom/laiwang/sdk/openapi/ILWAPI;
.super Ljava/lang/Object;
.source "ILWAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    }
.end annotation


# virtual methods
.method public abstract answerLWResponced(Landroid/content/Context;Ljava/lang/String;Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)Z
.end method

.method public abstract deleteCallback()V
.end method

.method public abstract getLWVersion()I
.end method

.method public abstract isLWAppInstalled()Z
.end method

.method public abstract isLWSupported(I)Z
.end method

.method public abstract openLWAPP()Z
.end method

.method public abstract registCallback(Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V
.end method

.method public abstract requestData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z
.end method

.method public abstract transactData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z
.end method
