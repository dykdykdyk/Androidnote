.class public Lcom/amap/loc/cr;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:I

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/text/DecimalFormat;

.field private static e:Ljava/text/SimpleDateFormat;

.field private static f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v2, Lcom/amap/loc/cr;->a:I

    sput-object v1, Lcom/amap/loc/cr;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/amap/loc/cr;->c:Ljava/util/Hashtable;

    sput-object v1, Lcom/amap/loc/cr;->d:Ljava/text/DecimalFormat;

    sput-object v1, Lcom/amap/loc/cr;->e:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/loc/cr;->f:[Ljava/lang/String;

    return-void
.end method

