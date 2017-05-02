.class public abstract Lcom/renn/rennsdk/http/HttpRequest$CloseOperation;
.super Lcom/renn/rennsdk/http/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/renn/rennsdk/http/HttpRequest$Operation",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field private final ignoreCloseExceptions:Z


# direct methods
