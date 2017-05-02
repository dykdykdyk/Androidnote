.class public Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;
.super Ljava/lang/Object;
.source "BackGroudSeletor.java"


# static fields
.field static EMPTY_STATE_SET:[I

.field static ENABLED_STATE_SET:[I

.field static PRESSED_ENABLED_STATE_SET:[I

.field private static pix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->PRESSED_ENABLED_STATE_SET:[I

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->ENABLED_STATE_SET:[I

    .line 17
    new-array v0, v2, [I

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->EMPTY_STATE_SET:[I

    .line 18
    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    return-void

    .line 15
    nop

    :array_1e
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

