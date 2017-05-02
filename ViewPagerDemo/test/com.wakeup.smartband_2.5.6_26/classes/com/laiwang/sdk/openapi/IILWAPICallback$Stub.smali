.class public abstract Lcom/laiwang/sdk/openapi/IILWAPICallback$Stub;
.super Landroid/os/Binder;
.source "IILWAPICallback.java"

# interfaces
.implements Lcom/laiwang/sdk/openapi/IILWAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/openapi/IILWAPICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/openapi/IILWAPICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.laiwang.sdk.openapi.IILWAPICallback"

.field static final TRANSACTION_onDisplay:I = 0x1

.field static final TRANSACTION_onLWAPICallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

