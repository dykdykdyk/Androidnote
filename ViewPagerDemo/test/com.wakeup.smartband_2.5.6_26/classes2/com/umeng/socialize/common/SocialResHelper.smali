.class public Lcom/umeng/socialize/common/SocialResHelper;
.super Ljava/lang/Object;
.source "SocialResHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;,
        Lcom/umeng/socialize/common/SocialResHelper$LoadMode;,
        Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;,
        Lcom/umeng/socialize/common/SocialResHelper$Builder;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/download/.um/"

.field private static final EXTERNAL_CACHE_SIZE:J = 0x6400000L

.field private static final INTERNAL_CACHE_SIZE:J = 0xa00000L

.field public static RESUTIL_V2_DUBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SocialResHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/common/SocialResHelper;->RESUTIL_V2_DUBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

