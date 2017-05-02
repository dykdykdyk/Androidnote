.class synthetic Lcom/umeng/socialize/handler/UMWXHandler$6;
.super Ljava/lang/Object;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 457
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/socialize/handler/UMWXHandler$6;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    :try_start_9
    sget-object v0, Lcom/umeng/socialize/handler/UMWXHandler$6;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/umeng/socialize/handler/UMWXHandler$6;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
