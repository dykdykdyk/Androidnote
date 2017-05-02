.class public Lcom/umeng/socialize/net/utils/AesHelper;
.super Ljava/lang/Object;
.source "AesHelper.java"


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static isencry:Z

.field private static iv:[B

.field private static pwd:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/net/utils/AesHelper;->pwd:[B

    .line 23
    const-string/jumbo v0, "nmeug.f9/Om+L823"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/net/utils/AesHelper;->iv:[B

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/net/utils/AesHelper;->isencry:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

