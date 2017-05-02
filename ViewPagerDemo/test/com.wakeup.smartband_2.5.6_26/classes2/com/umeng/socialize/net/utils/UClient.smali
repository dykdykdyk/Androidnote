.class public Lcom/umeng/socialize/net/utils/UClient;
.super Ljava/lang/Object;
.source "UClient.java"


# static fields
.field private static final END:Ljava/lang/String; = "\r\n"

.field private static final TAG:Ljava/lang/String; = "UClient"


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestInfo:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 1

