.class public Lcom/amap/loc/at;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final a:Lcom/amap/loc/at;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/loc/as;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/amap/loc/at;

    invoke-direct {v0}, Lcom/amap/loc/at;-><init>()V

    sput-object v0, Lcom/amap/loc/at;->a:Lcom/amap/loc/at;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

