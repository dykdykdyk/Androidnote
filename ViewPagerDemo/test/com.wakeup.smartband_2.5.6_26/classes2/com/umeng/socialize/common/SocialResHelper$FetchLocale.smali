.class public final enum Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;
.super Ljava/lang/Enum;
.source "SocialResHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/SocialResHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FetchLocale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

.field public static final enum FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

.field public static final enum FETCH_FROM_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    new-instance v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    const-string/jumbo v1, "FETCH_FROM_LOCALE_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    new-instance v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    const-string/jumbo v1, "FETCH_FROM_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    .line 614
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->$VALUES:[Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

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
    .line 614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;
    .registers 2

    .prologue
    .line 614
    const-class v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;
    .registers 1

    .prologue
    .line 614
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->$VALUES:[Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-virtual {v0}, [Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    return-object v0
.end method
