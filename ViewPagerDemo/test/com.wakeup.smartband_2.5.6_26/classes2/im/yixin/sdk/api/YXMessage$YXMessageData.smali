.class public interface abstract Lim/yixin/sdk/api/YXMessage$YXMessageData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/YXMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "YXMessageData"
.end annotation


# virtual methods
.method public abstract dataType()Lim/yixin/sdk/api/YXMessage$MessageType;
.end method

.method public abstract read(Landroid/os/Bundle;)V
.end method

.method public abstract verifyData()Z
.end method

.method public abstract write(Landroid/os/Bundle;)V
.end method
