.class public Lcom/amap/api/mapcore/util/c;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMapDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/c$a;,
        Lcom/amap/api/mapcore/util/c$e;,
        Lcom/amap/api/mapcore/util/c$h;,
        Lcom/amap/api/mapcore/util/c$i;,
        Lcom/amap/api/mapcore/util/c$b;,
        Lcom/amap/api/mapcore/util/c$f;,
        Lcom/amap/api/mapcore/util/c$c;,
        Lcom/amap/api/mapcore/util/c$d;,
        Lcom/amap/api/mapcore/util/c$g;
    }
.end annotation


# static fields
.field private static final aG:D


# instance fields
.field private A:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/amap/api/mapcore/util/u$c;

.field private D:Lcom/amap/api/mapcore/util/u$a;

.field private E:Lcom/amap/api/mapcore/util/u$b;

.field private F:I

.field private G:Lcom/autonavi/amap/mapcore/MapCore;

.field private H:Landroid/content/Context;

.field private I:Lcom/amap/api/mapcore/util/a;

.field private J:Lcom/autonavi/amap/mapcore/MapProjection;

.field private K:Landroid/view/GestureDetector;

.field private L:Landroid/view/ScaleGestureDetector;

.field private M:Lcom/amap/api/mapcore/util/be;

.field private N:Landroid/view/SurfaceHolder;

.field private O:Lcom/amap/api/mapcore/util/ah;

.field private P:Lcom/amap/api/mapcore/util/az;

.field private Q:Lcom/amap/api/mapcore/util/aa;

.field private R:Lcom/amap/api/mapcore/util/q;

.field private S:Lcom/amap/api/mapcore/util/ar;

.field private T:Lcom/amap/api/mapcore/util/o;

.field private U:Lcom/amap/api/mapcore/util/z;

.field private V:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private W:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private X:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private Y:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private Z:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field a:F

.field private aA:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private aB:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private aC:Landroid/os/Handler;

.field private aD:Lcom/amap/api/mapcore/indoor/IndoorBuilding;

.field private aE:Lcom/autonavi/amap/mapcore/interfaces/CameraUpdateFactoryDelegate;

.field private aF:Ljava/util/Timer;

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Ljava/lang/Boolean;

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private aU:Landroid/os/Handler;

.field private aV:I

.field private aW:Lcom/amap/api/mapcore/util/s;

.field private aX:Z

.field private aY:Z

.field private volatile aZ:Z

.field private aa:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private ab:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private ac:Lcom/amap/api/maps/AMap$OnMapTouchListener;

.field private ad:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private ae:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private af:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private ag:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private ah:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private ai:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private aj:Landroid/view/View;

.field private ak:Lcom/autonavi/amap/mapcore/interfaces/IMarkerDelegate;

.field private al:Lcom/amap/api/mapcore/util/ap;

.field private am:Lcom/autonavi/amap/mapcore/interfaces/IProjectionDelegate;

.field private an:Lcom/autonavi/amap/mapcore/interfaces/IUiSettingsDelegate;

.field private ao:Lcom/amap/api/maps/LocationSource;

.field private ap:Landroid/graphics/Rect;

.field private aq:Lcom/amap/api/mapcore/util/m;

.field private ar:Lcom/amap/api/mapcore/util/bd;

.field private as:Lcom/amap/api/mapcore/util/aj;

.field private at:Lcom/autonavi/amap/mapcore/interfaces/CameraAnimator;

.field private au:I

.field private av:I

.field private aw:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private ax:I

.field private ay:Landroid/graphics/drawable/Drawable;

.field private az:Landroid/location/Location;

.field b:F

.field private volatile ba:Z

.field private bb:Landroid/os/Handler;

.field private bc:Ljava/lang/Runnable;

.field private volatile bd:Z

.field private be:Z

.field private bf:Z

.field private bg:Z

.field private bh:Lcom/amap/api/maps/model/Marker;

.field private bi:Lcom/autonavi/amap/mapcore/interfaces/IMarkerDelegate;

.field private bj:Z

.field private bk:Z

.field private bl:Z

.field private bm:I

.field private bn:Z

.field private bo:Ljava/lang/Thread;

.field private bp:Lcom/amap/api/maps/model/LatLngBounds;

.field private bq:Z

.field private br:Z

.field private bs:I

.field private bt:I

.field private bu:Landroid/os/Handler;

.field private bv:Ljava/lang/Runnable;

.field private bw:Ljava/lang/Runnable;

.field private bx:Lcom/amap/api/mapcore/util/c$a;

.field c:F

.field public d:Lcom/amap/api/mapcore/util/ae;

.field e:Lcom/amap/api/mapcore/util/ad;

.field f:Lcom/amap/api/mapcore/util/ba;

.field g:Lcom/amap/api/mapcore/util/aw;

.field h:Lcom/amap/api/mapcore/util/v;

.field i:Lcom/amap/api/mapcore/util/u;

.field j:Lcom/autonavi/amap/mapcore/interfaces/IGLSurfaceView;

.field k:Ljava/lang/Runnable;

.field final l:Landroid/os/Handler;

.field m:Lcom/amap/api/maps/CustomRenderer;

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 241
    const-wide/high16 v0, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/c;->aG:D

    return-void
.end method

