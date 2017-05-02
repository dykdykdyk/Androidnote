.class public Lcom/amap/loc/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/a$a;,
        Lcom/amap/loc/a$c;,
        Lcom/amap/loc/a$b;,
        Lcom/amap/loc/a$d;
    }
.end annotation


# static fields
.field public static r:Z


# instance fields
.field A:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field B:Z

.field C:Z

.field D:Lorg/json/JSONObject;

.field private E:I

.field private F:Z

.field private G:Landroid/content/Context;

.field private H:Z

.field private I:Z

.field private J:Lorg/json/JSONArray;

.field private K:I

.field private L:Z

.field private M:Landroid/content/ServiceConnection;

.field private N:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/loc/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/loc/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:Lcom/amap/api/location/AMapLocation;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/amap/loc/a$c;

.field c:Lcom/amap/loc/e;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/loc/d;

.field f:Z

.field public g:Z

.field h:Lcom/amap/loc/f;

.field i:Landroid/os/Messenger;

.field j:Landroid/os/Messenger;

.field k:Landroid/content/Intent;

.field l:I

.field m:Z

.field n:J

.field o:Lcom/amap/api/location/AMapLocation;

.field p:J

.field q:J

.field s:Ljava/util/concurrent/ScheduledExecutorService;

.field t:Lcom/amap/loc/a$d;

.field u:Lcom/amap/loc/a$b;

.field v:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field x:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/loc/a;->r:Z

    return-void
.end method

