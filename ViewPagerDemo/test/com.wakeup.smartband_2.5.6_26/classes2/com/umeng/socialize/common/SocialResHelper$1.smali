.class synthetic Lcom/umeng/socialize/common/SocialResHelper$1;
.super Ljava/lang/Object;
.source "SocialResHelper.java"


# static fields
.field static final synthetic $SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 396
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->values()[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    :try_start_9
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
