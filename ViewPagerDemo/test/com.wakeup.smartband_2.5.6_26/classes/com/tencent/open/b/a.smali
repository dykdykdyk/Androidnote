.class public Lcom/tencent/open/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    return-void
.end method

