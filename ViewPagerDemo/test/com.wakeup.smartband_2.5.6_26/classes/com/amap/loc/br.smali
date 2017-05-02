.class public Lcom/amap/loc/br;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/br$a;,
        Lcom/amap/loc/br$b;
    }
.end annotation


# static fields
.field static l:Z

.field static n:I

.field static o:J

.field static p:I


# instance fields
.field private A:Lorg/json/JSONObject;

.field private volatile B:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private volatile C:J

.field private D:J

.field private E:J

.field private volatile F:Z

.field private G:Z

.field private H:J

.field private volatile I:J

.field private J:I

.field private volatile K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Lcom/amap/loc/cj;

.field private volatile N:Ljava/util/Timer;

.field private volatile O:Ljava/util/TimerTask;

.field private P:I

.field private Q:Ljava/lang/Object;

.field private volatile R:Ljava/lang/Object;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:J

.field private volatile W:J

.field private volatile X:Ljava/lang/String;

.field private Y:Lcom/amap/loc/bw;

.field private Z:Lcom/amap/loc/cg;

.field a:Lcom/amap/loc/bs;

.field private aa:Ljava/lang/StringBuilder;

.field private ab:Z

.field private ac:Z

.field private volatile ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private volatile ai:Z

.field private aj:Z

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Z

.field volatile b:I

.field c:Z

.field d:Ljava/lang/Object;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field volatile h:Z

.field i:I

.field j:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field k:Z

.field m:Lcom/amap/loc/br$a;

.field q:Ljava/lang/StringBuilder;

.field private volatile r:Landroid/content/Context;

.field private s:Landroid/net/ConnectivityManager;

.field private volatile t:Lcom/amap/loc/by;

.field private volatile u:Lcom/amap/loc/bx;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private y:Lcom/amap/loc/br$b;

.field private volatile z:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/loc/br;->l:Z

    sput v2, Lcom/amap/loc/br;->n:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/loc/br;->o:J

    sput v2, Lcom/amap/loc/br;->p:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

