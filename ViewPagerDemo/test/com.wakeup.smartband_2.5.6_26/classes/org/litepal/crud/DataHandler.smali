.class abstract Lorg/litepal/crud/DataHandler;
.super Lorg/litepal/LitePalBase;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/litepal/crud/DataHandler$QueryInfoCache;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataHandler"


# instance fields
.field private fkInCurrentModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fkInOtherModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private tempEmptyModel:Lorg/litepal/crud/DataSupport;


# direct methods
.method constructor <init>()V
    .registers 1

