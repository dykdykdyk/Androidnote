.class public interface abstract Lcom/laiwang/sdk/channel/IILWAPIChannel;
.super Ljava/lang/Object;
.source "IILWAPIChannel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;
    }
.end annotation


# virtual methods
.method public abstract introduceMe(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerME(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/openapi/IILWAPICallback;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transportData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
