.class public abstract Lcom/sina/sso/RemoteSSO$Stub;
.super Landroid/os/Binder;
.source "RemoteSSO.java"

# interfaces
.implements Lcom/sina/sso/RemoteSSO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/sso/RemoteSSO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/sso/RemoteSSO$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sina.sso.RemoteSSO"

.field static final TRANSACTION_getActivityName:I = 0x2

.field static final TRANSACTION_getLoginUserName:I = 0x3

.field static final TRANSACTION_getPackageName:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

