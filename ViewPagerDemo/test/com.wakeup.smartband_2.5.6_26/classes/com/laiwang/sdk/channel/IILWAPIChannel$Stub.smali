.class public abstract Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;
.super Landroid/os/Binder;
.source "IILWAPIChannel.java"

# interfaces
.implements Lcom/laiwang/sdk/channel/IILWAPIChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/channel/IILWAPIChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.laiwang.sdk.channel.IILWAPIChannel"

.field static final TRANSACTION_introduceMe:I = 0x2

.field static final TRANSACTION_registerME:I = 0x1

.field static final TRANSACTION_requestData:I = 0x4

.field static final TRANSACTION_transportData:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

