.class public Lcom/amap/api/fence/Fence;
.super Ljava/lang/Object;
.source "Fence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/fence/Fence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/app/PendingIntent;

.field public b:Ljava/lang/String;

.field public c:D

.field public d:D

.field public e:F

.field public f:I

.field public g:J

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/amap/api/fence/Fence$1;

    invoke-direct {v0}, Lcom/amap/api/fence/Fence$1;-><init>()V

    sput-object v0, Lcom/amap/api/fence/Fence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

