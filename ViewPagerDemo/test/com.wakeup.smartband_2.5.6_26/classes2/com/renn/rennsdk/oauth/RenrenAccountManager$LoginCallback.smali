.class public interface abstract Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginCallback;
.super Ljava/lang/Object;
.source "RenrenAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/oauth/RenrenAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallback"
.end annotation


# virtual methods
.method public abstract loginFail(Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;)V
.end method

.method public abstract loginSuccess(Z)V
.end method
