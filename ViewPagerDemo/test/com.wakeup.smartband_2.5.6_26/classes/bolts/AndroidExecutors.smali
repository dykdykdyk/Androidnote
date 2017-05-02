.class final Lbolts/AndroidExecutors;
.super Ljava/lang/Object;
.source "AndroidExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AndroidExecutors$1;,
        Lbolts/AndroidExecutors$UIThreadExecutor;
    }
.end annotation


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final INSTANCE:Lbolts/AndroidExecutors;

.field static final KEEP_ALIVE_TIME:J = 0x1L

.field static final MAX_POOL_SIZE:I


# instance fields
.field private final uiThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lbolts/AndroidExecutors;

    invoke-direct {v0}, Lbolts/AndroidExecutors;-><init>()V

    sput-object v0, Lbolts/AndroidExecutors;->INSTANCE:Lbolts/AndroidExecutors;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lbolts/AndroidExecutors;->CPU_COUNT:I

    .line 59
    sget v0, Lbolts/AndroidExecutors;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/AndroidExecutors;->CORE_POOL_SIZE:I

    .line 60
    sget v0, Lbolts/AndroidExecutors;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/AndroidExecutors;->MAX_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

