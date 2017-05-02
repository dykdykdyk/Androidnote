.class public Lcom/amap/loc/ca;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/loc/ca$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/loc/ca;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/loc/ca$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/loc/ca;->a:Lcom/amap/loc/ca;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

