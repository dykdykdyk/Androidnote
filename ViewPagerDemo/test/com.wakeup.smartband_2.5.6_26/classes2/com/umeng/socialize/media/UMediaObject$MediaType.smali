.class public enum Lcom/umeng/socialize/media/UMediaObject$MediaType;
.super Ljava/lang/Enum;
.source "UMediaObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMediaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/media/UMediaObject$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field public static final enum WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$1;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/media/UMediaObject$MediaType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 30
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$2;

    const-string/jumbo v1, "VEDIO"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/media/UMediaObject$MediaType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 36
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$3;

    const-string/jumbo v1, "MUSIC"

    invoke-direct {v0, v1, v5}, Lcom/umeng/socialize/media/UMediaObject$MediaType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 42
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$4;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v6}, Lcom/umeng/socialize/media/UMediaObject$MediaType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 48
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$5;

    const-string/jumbo v1, "TEXT_IMAGE"

    invoke-direct {v0, v1, v7}, Lcom/umeng/socialize/media/UMediaObject$MediaType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 54
    new-instance v0, Lcom/umeng/socialize/media/UMediaObject$MediaType$6;

    const-string/jumbo v1, "WEBPAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/media/UMediaObject$MediaType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/umeng/socialize/media/UMediaObject$MediaType;

    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->$VALUES:[Lcom/umeng/socialize/media/UMediaObject$MediaType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/media/UMediaObject$1;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMediaObject$MediaType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .registers 6

    .prologue
    .line 62
    invoke-static {}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->values()[Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    .line 63
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 64
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 68
    :goto_15
    return-object v0

    .line 63
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 68
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .registers 2

    .prologue
    .line 23
    const-class v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->$VALUES:[Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v0}, [Lcom/umeng/socialize/media/UMediaObject$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method
