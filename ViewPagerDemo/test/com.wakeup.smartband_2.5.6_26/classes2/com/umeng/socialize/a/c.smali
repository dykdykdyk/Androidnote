.class public Lcom/umeng/socialize/a/c;
.super Ljava/lang/Object;
.source "SocialAnalytics.java"


# static fields
.field private static a:Lcom/umeng/socialize/net/base/SocializeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    sput-object v0, Lcom/umeng/socialize/a/c;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

