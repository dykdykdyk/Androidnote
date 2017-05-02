.class public Lcom/autonavi/amap/mapcore/interfaces/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$h;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$f;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$e;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$i;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$b;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$a;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLConfigChooser;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$d;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$c;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLContextFactory;,
        Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$f;

.field private mGLWrapper:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/autonavi/amap/mapcore/interfaces/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1888
    new-instance v0, Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;-><init>(Lcom/autonavi/amap/mapcore/interfaces/a;)V

    sput-object v0, Lcom/autonavi/amap/mapcore/interfaces/GLTextureView;->sGLThreadManager:Lcom/autonavi/amap/mapcore/interfaces/GLTextureView$g;

    return-void
.end method

