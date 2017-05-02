.class public Lcom/het/common/utils/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/het/common/utils/ACache$Utils;,
        Lcom/het/common/utils/ACache$ACacheManager;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/het/common/utils/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/het/common/utils/ACache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/het/common/utils/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

