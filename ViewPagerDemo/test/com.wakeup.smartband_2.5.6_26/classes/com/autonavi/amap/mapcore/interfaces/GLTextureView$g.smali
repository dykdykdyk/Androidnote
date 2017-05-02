.class Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/interfaces/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1775
    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

