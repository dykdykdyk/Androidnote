.class public Lcom/het/common/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static sDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/het/common/utils/MD5Utils;->sDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_a

    .line 25
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_9
    return-void

    .line 22
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_a
    move-exception v0

    .line 23
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6MD5\u4fe1\u606f\u6458\u8981\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/het/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

