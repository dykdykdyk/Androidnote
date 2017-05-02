.class public Lcom/amap/api/maps/model/TileProjection;
.super Ljava/lang/Object;
.source "TileProjection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileProjection;


# instance fields
.field public final maxX:I

.field public final maxY:I

.field public final minX:I

.field public final minY:I

.field public final offsetX:I

.field public final offsetY:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/amap/api/maps/model/TileProjection;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/TileProjection;-><init>(IIIIII)V

    sput-object v0, Lcom/amap/api/maps/model/TileProjection;->CREATOR:Lcom/amap/api/maps/model/TileProjection;

    return-void
.end method

