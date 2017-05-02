.class public Lcom/wakeup/smartband/net/NetHelper;
.super Ljava/lang/Object;
.source "NetHelper.java"


# static fields
.field private static final BASEURL:Ljava/lang/String;

.field private static final BLOODOXYGEN:Ljava/lang/String; = "bloodOxygen"

.field private static final BLOODPRESSURE:Ljava/lang/String; = "bloodPressure"

.field private static final CALORY:Ljava/lang/String; = "calorie"

.field private static final FALLDOWN:Ljava/lang/String; = "fallUp.ashx"

.field private static final HEARTRATE:Ljava/lang/String; = "heartRate"

.field private static final MACBIND:Ljava/lang/String; = "api_macbind.php"

.field private static final SLEEP:Ljava/lang/String; = "sleep"

.field private static final STEPCOUNT:Ljava/lang/String; = "step"

.field private static final TAG:Ljava/lang/String; = "NetHelper"

.field private static final TIRED:Ljava/lang/String; = "fatigue"

.field public static basicUrl:Ljava/lang/String;

.field public static dbModel:Lcom/wakeup/smartband/model/DBModel;

.field private static instance:Lcom/wakeup/smartband/net/NetHelper;

.field public static isupdata:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/net/NotUploadedDBModelWithId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-string/jumbo v0, "http://www.iwhop.com"

    sput-object v0, Lcom/wakeup/smartband/net/NetHelper;->basicUrl:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wakeup/smartband/net/NetHelper;->basicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/app.php/Api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/net/NetHelper;->BASEURL:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wakeup/smartband/net/NetHelper;->isupdata:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

