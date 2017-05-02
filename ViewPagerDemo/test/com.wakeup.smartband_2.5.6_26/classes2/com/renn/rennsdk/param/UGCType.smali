.class public final enum Lcom/renn/rennsdk/param/UGCType;
.super Ljava/lang/Enum;
.source "UGCType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/param/UGCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/param/UGCType;

.field public static final enum TYPE_ALBUM:Lcom/renn/rennsdk/param/UGCType;

.field public static final enum TYPE_BLOG:Lcom/renn/rennsdk/param/UGCType;

.field public static final enum TYPE_PHOTO:Lcom/renn/rennsdk/param/UGCType;

.field public static final enum TYPE_SHARE:Lcom/renn/rennsdk/param/UGCType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/renn/rennsdk/param/UGCType;

    const-string/jumbo v1, "TYPE_BLOG"

    invoke-direct {v0, v1, v2}, Lcom/renn/rennsdk/param/UGCType;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/renn/rennsdk/param/UGCType;->TYPE_BLOG:Lcom/renn/rennsdk/param/UGCType;

    .line 16
    new-instance v0, Lcom/renn/rennsdk/param/UGCType;

    const-string/jumbo v1, "TYPE_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/renn/rennsdk/param/UGCType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/renn/rennsdk/param/UGCType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/UGCType;

    .line 20
    new-instance v0, Lcom/renn/rennsdk/param/UGCType;

    const-string/jumbo v1, "TYPE_SHARE"

    invoke-direct {v0, v1, v4}, Lcom/renn/rennsdk/param/UGCType;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/renn/rennsdk/param/UGCType;->TYPE_SHARE:Lcom/renn/rennsdk/param/UGCType;

    .line 24
    new-instance v0, Lcom/renn/rennsdk/param/UGCType;

    const-string/jumbo v1, "TYPE_ALBUM"

    invoke-direct {v0, v1, v5}, Lcom/renn/rennsdk/param/UGCType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/renn/rennsdk/param/UGCType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/UGCType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/renn/rennsdk/param/UGCType;

    sget-object v1, Lcom/renn/rennsdk/param/UGCType;->TYPE_BLOG:Lcom/renn/rennsdk/param/UGCType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/renn/rennsdk/param/UGCType;->TYPE_PHOTO:Lcom/renn/rennsdk/param/UGCType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/renn/rennsdk/param/UGCType;->TYPE_SHARE:Lcom/renn/rennsdk/param/UGCType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/renn/rennsdk/param/UGCType;->TYPE_ALBUM:Lcom/renn/rennsdk/param/UGCType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/renn/rennsdk/param/UGCType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/UGCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/param/UGCType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/param/UGCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/param/UGCType;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/param/UGCType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/param/UGCType;->ENUM$VALUES:[Lcom/renn/rennsdk/param/UGCType;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/param/UGCType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
