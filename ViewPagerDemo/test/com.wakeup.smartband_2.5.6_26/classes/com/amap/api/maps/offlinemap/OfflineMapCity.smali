.class public Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.super Lcom/amap/api/maps/offlinemap/City;
.source "OfflineMapCity.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    new-instance v0, Lcom/amap/api/maps/offlinemap/b;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/b;-><init>()V

    sput-object v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

