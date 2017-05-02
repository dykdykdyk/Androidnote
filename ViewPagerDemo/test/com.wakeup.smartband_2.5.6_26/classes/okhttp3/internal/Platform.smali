.class public Lokhttp3/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final INFO:I = 0x4

.field private static final PLATFORM:Lokhttp3/internal/Platform;

.field public static final WARN:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lokhttp3/internal/Platform;->findPlatform()Lokhttp3/internal/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Platform;->PLATFORM:Lokhttp3/internal/Platform;

    .line 73
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

