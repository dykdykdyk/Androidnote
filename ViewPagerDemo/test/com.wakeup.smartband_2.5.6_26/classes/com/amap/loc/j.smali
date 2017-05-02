.class public Lcom/amap/loc/j;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/j$b;,
        Lcom/amap/loc/j$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/amap/loc/j;->a:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/j;->b:Ljava/lang/String;

    return-void
.end method

