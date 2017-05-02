.class public Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.source "PullToRefreshWebView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;
    }
.end annotation


# static fields
.field static final DEF_JS_READY_PULL_DOWN_CALL:Ljava/lang/String; = "javascript:isReadyForPullDown();"

.field static final DEF_JS_READY_PULL_UP_CALL:Ljava/lang/String; = "javascript:isReadyForPullUp();"

.field static final JS_INTERFACE_PKG:Ljava/lang/String; = "ptr"


# instance fields
.field private final mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJsCallback:Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;


# direct methods
