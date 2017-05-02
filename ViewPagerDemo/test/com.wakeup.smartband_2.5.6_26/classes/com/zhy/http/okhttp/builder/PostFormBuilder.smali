.class public Lcom/zhy/http/okhttp/builder/PostFormBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "PostFormBuilder.java"

# interfaces
.implements Lcom/zhy/http/okhttp/builder/HasParamsable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder",
        "<",
        "Lcom/zhy/http/okhttp/builder/PostFormBuilder;",
        ">;",
        "Lcom/zhy/http/okhttp/builder/HasParamsable;"
    }
.end annotation


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

