.class Lcom/facebook/ProgressNoopOutputStream;
.super Ljava/io/OutputStream;
.source "ProgressNoopOutputStream.java"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchMax:I

.field private final callbackHandler:Landroid/os/Handler;

.field private currentRequest:Lcom/facebook/GraphRequest;

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
