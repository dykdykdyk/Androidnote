.class public final enum Lcom/renn/rennsdk/param/LikeUGCType;
.super Ljava/lang/Enum;
.source "LikeUGCType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/param/LikeUGCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_ALBUM:Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_BLOG:Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_PHOTO:Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_SHARE:Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_STATUS:Lcom/renn/rennsdk/param/LikeUGCType;

.field public static final enum TYPE_VIDEO:Lcom/renn/rennsdk/param/LikeUGCType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_VIDEO:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 10
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_BLOG"

    invoke-direct {v0, v1, v4}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_BLOG:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 14
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 18
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_STATUS:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 22
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_SHARE"

    invoke-direct {v0, v1, v7}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_SHARE:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 26
    new-instance v0, Lcom/renn/rennsdk/param/LikeUGCType;

    const-string/jumbo v1, "TYPE_ALBUM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/renn/rennsdk/param/LikeUGCType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/LikeUGCType;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/renn/rennsdk/param/LikeUGCType;

    sget-object v1, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_VIDEO:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_BLOG:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_STATUS:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_SHARE:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/renn/rennsdk/param/LikeUGCType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/LikeUGCType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/LikeUGCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/param/LikeUGCType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/param/LikeUGCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/param/LikeUGCType;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/param/LikeUGCType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/param/LikeUGCType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/LikeUGCType;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/param/LikeUGCType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
