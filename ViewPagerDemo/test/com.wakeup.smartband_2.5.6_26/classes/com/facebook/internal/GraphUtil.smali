.class public Lcom/facebook/internal/GraphUtil;
.super Ljava/lang/Object;
.source "GraphUtil.java"


# static fields
.field private static final dateFormats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/GraphUtil;->dateFormats:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

