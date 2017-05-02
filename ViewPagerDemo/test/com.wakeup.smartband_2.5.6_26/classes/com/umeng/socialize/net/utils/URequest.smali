.class public abstract Lcom/umeng/socialize/net/utils/URequest;
.super Ljava/lang/Object;
.source "URequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/utils/URequest$FilePair;
    }
.end annotation


# static fields
.field protected static GET:Ljava/lang/String;

.field protected static POST:Ljava/lang/String;


# instance fields
.field protected mBaseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "POST"

    sput-object v0, Lcom/umeng/socialize/net/utils/URequest;->POST:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "GET"

    sput-object v0, Lcom/umeng/socialize/net/utils/URequest;->GET:Ljava/lang/String;

    return-void
.end method

