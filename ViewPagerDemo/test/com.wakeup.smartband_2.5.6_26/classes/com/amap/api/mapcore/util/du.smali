.class public Lcom/amap/api/mapcore/util/du;
.super Ljava/lang/Thread;
.source "SDKCoordinatorDownload.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/fr$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/du$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/fr;

.field private b:Lcom/amap/api/mapcore/util/du$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string/jumbo v0, "sodownload"

    sput-object v0, Lcom/amap/api/mapcore/util/du;->h:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "sofail"

    sput-object v0, Lcom/amap/api/mapcore/util/du;->i:Ljava/lang/String;

    return-void
.end method

