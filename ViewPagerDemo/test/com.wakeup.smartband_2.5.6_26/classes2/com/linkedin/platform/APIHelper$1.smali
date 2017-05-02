.class Lcom/linkedin/platform/APIHelper$1;
.super Ljava/lang/Object;
.source "APIHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkedin/platform/APIHelper;->buildRequest(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lcom/linkedin/platform/listeners/ApiListener;)Lcom/android/volley/toolbox/JsonObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkedin/platform/APIHelper;

.field final synthetic val$apiListener:Lcom/linkedin/platform/listeners/ApiListener;


# direct methods
