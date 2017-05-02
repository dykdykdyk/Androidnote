.class Lcom/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static volatile imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

