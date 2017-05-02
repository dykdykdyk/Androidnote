.class public final enum Lcom/umeng/socialize/common/SocialResHelper$LoadMode;
.super Ljava/lang/Enum;
.source "SocialResHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/SocialResHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/common/SocialResHelper$LoadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

.field public static final enum LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

.field public static final enum LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

.field public static final enum LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    new-instance v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    const-string/jumbo v1, "LOAD_CACHE_ELSE_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    .line 597
    new-instance v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    const-string/jumbo v1, "LOAD_CACHE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    .line 601
    new-instance v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    const-string/jumbo v1, "LOAD_NETWORK_ELSE_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    .line 589
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->$VALUES:[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/common/SocialResHelper$LoadMode;
    .registers 2

    .prologue
    .line 589
    const-class v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;
    .registers 1

    .prologue
    .line 589
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->$VALUES:[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v0}, [Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    return-object v0
.end method
