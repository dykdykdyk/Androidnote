.class public Lcom/tencent/open/b/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static b:Lcom/tencent/open/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/open/b/f;->a:[Ljava/lang/String;

    return-void
.end method

