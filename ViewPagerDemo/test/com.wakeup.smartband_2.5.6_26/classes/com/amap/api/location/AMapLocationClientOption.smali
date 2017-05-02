.class public Lcom/amap/api/location/AMapLocationClientOption;
.super Ljava/lang/Object;
.source "AMapLocationClientOption.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;,
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field private static i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;


# instance fields
.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

