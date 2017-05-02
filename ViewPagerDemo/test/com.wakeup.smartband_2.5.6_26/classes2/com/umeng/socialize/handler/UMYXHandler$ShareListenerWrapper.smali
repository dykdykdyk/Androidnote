.class Lcom/umeng/socialize/handler/UMYXHandler$ShareListenerWrapper;
.super Ljava/lang/Object;
.source "UMYXHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMYXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareListenerWrapper"
.end annotation


# instance fields
.field private mShareListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/umeng/socialize/UMShareListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/umeng/socialize/handler/UMYXHandler;


# direct methods
