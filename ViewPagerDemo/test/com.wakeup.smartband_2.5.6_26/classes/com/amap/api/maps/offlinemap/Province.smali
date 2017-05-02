.class public Lcom/amap/api/maps/offlinemap/Province;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/maps/offlinemap/Province;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Lcom/amap/api/maps/offlinemap/d;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/d;-><init>()V

    sput-object v0, Lcom/amap/api/maps/offlinemap/Province;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

