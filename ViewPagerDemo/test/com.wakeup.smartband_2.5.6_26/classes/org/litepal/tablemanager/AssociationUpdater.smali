.class public abstract Lorg/litepal/tablemanager/AssociationUpdater;
.super Lorg/litepal/tablemanager/Creator;
.source "AssociationUpdater.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AssociationUpdater"


# instance fields
.field private mAssociationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

