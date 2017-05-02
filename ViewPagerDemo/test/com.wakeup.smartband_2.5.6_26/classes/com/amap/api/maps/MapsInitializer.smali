.class public final Lcom/amap/api/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "MapsInitializer.java"


# static fields
.field public static KEY:Ljava/lang/String;

.field private static a:Z

.field public static sdcardDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->KEY:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/maps/MapsInitializer;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

