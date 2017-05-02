.class Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCallbackOutputStream"
.end annotation


# instance fields
.field final callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

.field final innerStream:Ljava/io/OutputStream;


# direct methods
