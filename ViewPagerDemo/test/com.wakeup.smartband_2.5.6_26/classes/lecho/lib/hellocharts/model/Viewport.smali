.class public Llecho/lib/hellocharts/model/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Llecho/lib/hellocharts/model/Viewport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Llecho/lib/hellocharts/model/Viewport$1;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport$1;-><init>()V

    sput-object v0, Llecho/lib/hellocharts/model/Viewport;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

