.class public Lcom/umeng/socialize/utils/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/utils/ResUtil$BindMode;,
        Lcom/umeng/socialize/utils/ResUtil$BindDrawableListener;,
        Lcom/umeng/socialize/utils/ResUtil$FetchTask;
    }
.end annotation


# static fields
.field private static final EXTERNAL_CACHE_SIZE:J = 0x6400000L

.field private static final IMAGE_VIEWS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_CACHE_SIZE:J = 0xa00000L

.field public static RESUTIL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/utils/ResUtil;->RESUTIL_DEBUG:Z

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/ResUtil;->IMAGE_VIEWS:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .registers 1

