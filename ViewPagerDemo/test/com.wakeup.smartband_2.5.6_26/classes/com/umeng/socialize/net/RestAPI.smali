.class public Lcom/umeng/socialize/net/RestAPI;
.super Ljava/lang/Object;
.source "RestAPI.java"


# static fields
.field private static a:Lcom/umeng/socialize/net/base/SocializeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    sput-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

