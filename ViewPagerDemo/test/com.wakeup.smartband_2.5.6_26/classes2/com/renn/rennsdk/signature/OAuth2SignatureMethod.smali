.class public interface abstract Lcom/renn/rennsdk/signature/OAuth2SignatureMethod;
.super Ljava/lang/Object;
.source "OAuth2SignatureMethod.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verify(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/renn/rennsdk/signature/InvalidSignatureException;
        }
    .end annotation
.end method
