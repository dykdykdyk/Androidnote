.class public final Lcom/amap/api/maps/model/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/d;


# instance fields
.field private final a:I

.field public final data:[B

.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/amap/api/maps/model/d;

    invoke-direct {v0}, Lcom/amap/api/maps/model/d;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/Tile;->CREATOR:Lcom/amap/api/maps/model/d;

    return-void
.end method

