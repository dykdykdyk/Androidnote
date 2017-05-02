.class public Lcom/amap/loc/cd;
.super Ljava/lang/Object;
.source "HeatMap.java"


# static fields
.field private static a:Lcom/amap/loc/cd;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/loc/cd;->a:Lcom/amap/loc/cd;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

