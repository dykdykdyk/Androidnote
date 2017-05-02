.class public abstract Lcom/zhy/http/okhttp/callback/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/zhy/http/okhttp/callback/Callback$1;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/callback/Callback$1;-><init>()V

    sput-object v0, Lcom/zhy/http/okhttp/callback/Callback;->CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

