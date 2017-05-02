.class public final enum Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;
.super Ljava/lang/Enum;
.source "RenrenAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renn/rennsdk/oauth/RenrenAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTHENTICATOR_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

.field private static final synthetic ENUM$VALUES:[Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

.field public static final enum IO_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

.field public static final enum OPERATION_CANCELED:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    const-string/jumbo v1, "OPERATION_CANCELED"

    invoke-direct {v0, v1, v2}, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->OPERATION_CANCELED:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    .line 103
    new-instance v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    const-string/jumbo v1, "AUTHENTICATOR_EXCEPTION"

    invoke-direct {v0, v1, v3}, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;-><init>(Ljava/lang/String;I)V

    .line 106
    sput-object v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->AUTHENTICATOR_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    .line 108
    new-instance v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    const-string/jumbo v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v4}, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;-><init>(Ljava/lang/String;I)V

    .line 111
    sput-object v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->IO_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    sget-object v1, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->OPERATION_CANCELED:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->AUTHENTICATOR_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->IO_EXCEPTION:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->ENUM$VALUES:[Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    return-object v0
.end method

.method public static values()[Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;->ENUM$VALUES:[Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    array-length v1, v0

    new-array v2, v1, [Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
