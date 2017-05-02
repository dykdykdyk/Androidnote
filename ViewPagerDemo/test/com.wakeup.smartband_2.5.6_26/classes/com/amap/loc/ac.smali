.class public Lcom/amap/loc/ac;
.super Ljava/lang/Object;
.source "DBOperation.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/loc/ab;",
            ">;",
            "Lcom/amap/loc/ab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/loc/ah;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/loc/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/loc/ac;->d:Ljava/util/Map;

    return-void
.end method

