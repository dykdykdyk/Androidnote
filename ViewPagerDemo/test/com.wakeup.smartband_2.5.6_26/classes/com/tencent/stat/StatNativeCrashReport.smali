.class public Lcom/tencent/stat/StatNativeCrashReport;
.super Ljava/lang/Object;


# static fields
.field public static final PRE_TAG_TOMBSTONE_FNAME:Ljava/lang/String; = "tombstone_"

.field static a:Lcom/tencent/stat/StatNativeCrashReport;

.field private static b:Lcom/tencent/stat/common/StatLogger;

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/String;


# instance fields
.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/stat/StatNativeCrashReport;

    invoke-direct {v0}, Lcom/tencent/stat/StatNativeCrashReport;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    :try_start_15
    const-string/jumbo v0, "MtaNativeCrash"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sget-object v1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public constructor <init>()V
    .registers 2

