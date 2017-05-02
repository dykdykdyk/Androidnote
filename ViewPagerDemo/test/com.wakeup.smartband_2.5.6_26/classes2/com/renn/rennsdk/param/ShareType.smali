.class public final enum Lcom/renn/rennsdk/param/ShareType;
.super Ljava/lang/Enum;
.source "ShareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/param/ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/param/ShareType;

.field public static final enum TYPE_ALBUM:Lcom/renn/rennsdk/param/ShareType;

.field public static final enum TYPE_BLOG:Lcom/renn/rennsdk/param/ShareType;

.field public static final enum TYPE_PHOTO:Lcom/renn/rennsdk/param/ShareType;

.field public static final enum TYPE_VIDEO:Lcom/renn/rennsdk/param/ShareType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/renn/rennsdk/param/ShareType;

    const-string/jumbo v1, "TYPE_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/renn/rennsdk/param/ShareType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/renn/rennsdk/param/ShareType;->TYPE_VIDEO:Lcom/renn/rennsdk/param/ShareType;

    .line 10
    new-instance v0, Lcom/renn/rennsdk/param/ShareType;

    const-string/jumbo v1, "TYPE_BLOG"

    invoke-direct {v0, v1, v3}, Lcom/renn/rennsdk/param/ShareType;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/renn/rennsdk/param/ShareType;->TYPE_BLOG:Lcom/renn/rennsdk/param/ShareType;

    .line 14
    new-instance v0, Lcom/renn/rennsdk/param/ShareType;

    const-string/jumbo v1, "TYPE_PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/renn/rennsdk/param/ShareType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/renn/rennsdk/param/ShareType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/ShareType;

    .line 18
    new-instance v0, Lcom/renn/rennsdk/param/ShareType;

    const-string/jumbo v1, "TYPE_ALBUM"

    invoke-direct {v0, v1, v5}, Lcom/renn/rennsdk/param/ShareType;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/renn/rennsdk/param/ShareType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/ShareType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/renn/rennsdk/param/ShareType;

    sget-object v1, Lcom/renn/rennsdk/param/ShareType;->TYPE_VIDEO:Lcom/renn/rennsdk/param/ShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/renn/rennsdk/param/ShareType;->TYPE_BLOG:Lcom/renn/rennsdk/param/ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/renn/rennsdk/param/ShareType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/renn/rennsdk/param/ShareType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/ShareType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/renn/rennsdk/param/ShareType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/param/ShareType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/param/ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/param/ShareType;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/param/ShareType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/param/ShareType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/ShareType;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/param/ShareType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
