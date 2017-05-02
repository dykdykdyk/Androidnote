.class public final enum Lcom/renn/rennsdk/AccessToken$Type;
.super Ljava/lang/Enum;
.source "AccessToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/AccessToken$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bearer:Lcom/renn/rennsdk/AccessToken$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/AccessToken$Type;

.field public static final enum MAC:Lcom/renn/rennsdk/AccessToken$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/renn/rennsdk/AccessToken$Type;

    const-string/jumbo v1, "Bearer"

    invoke-direct {v0, v1, v2}, Lcom/renn/rennsdk/AccessToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/renn/rennsdk/AccessToken$Type;->Bearer:Lcom/renn/rennsdk/AccessToken$Type;

    new-instance v0, Lcom/renn/rennsdk/AccessToken$Type;

    const-string/jumbo v1, "MAC"

    invoke-direct {v0, v1, v3}, Lcom/renn/rennsdk/AccessToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/renn/rennsdk/AccessToken$Type;->MAC:Lcom/renn/rennsdk/AccessToken$Type;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/renn/rennsdk/AccessToken$Type;

    sget-object v1, Lcom/renn/rennsdk/AccessToken$Type;->Bearer:Lcom/renn/rennsdk/AccessToken$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/renn/rennsdk/AccessToken$Type;->MAC:Lcom/renn/rennsdk/AccessToken$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/renn/rennsdk/AccessToken$Type;->ENUM$VALUES:[Lcom/renn/rennsdk/AccessToken$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/AccessToken$Type;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/AccessToken$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/AccessToken$Type;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/AccessToken$Type;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/AccessToken$Type;->ENUM$VALUES:[Lcom/renn/rennsdk/AccessToken$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/AccessToken$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
