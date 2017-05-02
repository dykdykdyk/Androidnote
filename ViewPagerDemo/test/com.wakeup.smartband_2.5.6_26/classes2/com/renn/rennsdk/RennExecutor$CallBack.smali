.class public interface abstract Lcom/renn/rennsdk/RennExecutor$CallBack;
.super Ljava/lang/Object;
.source "RennExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/RennExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/renn/rennsdk/RennResponse;)V
.end method
