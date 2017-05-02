.class public Lcom/amap/loc/p;
.super Ljava/lang/Thread;
.source "SDKCoordinatorDownload.java"

# interfaces
.implements Lcom/amap/loc/bh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/p$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amap/loc/bh;

.field private b:Lcom/amap/loc/p$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "sodownload"

    sput-object v0, Lcom/amap/loc/p;->h:Ljava/lang/String;

    const-string/jumbo v0, "sofail"

    sput-object v0, Lcom/amap/loc/p;->i:Ljava/lang/String;

    return-void
.end method

