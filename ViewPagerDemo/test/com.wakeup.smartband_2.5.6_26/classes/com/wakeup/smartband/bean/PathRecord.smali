.class public Lcom/wakeup/smartband/bean/PathRecord;
.super Lorg/litepal/crud/DataSupport;
.source "PathRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wakeup/smartband/bean/PathRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private averagespeed:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private endpoint:Lcom/amap/api/maps/model/LatLng;

.field private id:I

.field private pathline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private startpoint:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    new-instance v0, Lcom/wakeup/smartband/bean/PathRecord$1;

    invoke-direct {v0}, Lcom/wakeup/smartband/bean/PathRecord$1;-><init>()V

    sput-object v0, Lcom/wakeup/smartband/bean/PathRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

