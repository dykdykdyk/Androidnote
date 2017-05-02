.class public abstract Lorg/litepal/tablemanager/Generator;
.super Lorg/litepal/LitePalBase;
.source "Generator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Generator"


# instance fields
.field private mAllRelationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTableModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

