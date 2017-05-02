.class public abstract Lorg/litepal/LitePalBase;
.super Ljava/lang/Object;
.source "LitePalBase.java"


# static fields
.field private static final GET_ASSOCIATIONS_ACTION:I = 0x1

.field private static final GET_ASSOCIATION_INFO_ACTION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LitePalBase"


# instance fields
.field private classFieldsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAssociationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;


# direct methods
.method public constructor <init>()V
    .registers 4

