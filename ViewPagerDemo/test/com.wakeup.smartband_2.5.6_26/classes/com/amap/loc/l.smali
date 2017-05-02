.class public Lcom/amap/loc/l;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/l;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/loc/l;->b:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/l;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/l;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/l;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/l;->f:Ljava/lang/String;

    return-void
.end method

