.class public final Lcom/het/common/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static sDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/het/common/utils/SecurityUtils;->sDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_a

    .line 21
    :goto_9
    return-void

    .line 19
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

