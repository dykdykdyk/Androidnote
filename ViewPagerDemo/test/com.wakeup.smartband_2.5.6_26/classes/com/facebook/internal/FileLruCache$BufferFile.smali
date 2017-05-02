.class Lcom/facebook/internal/FileLruCache$BufferFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferFile"
.end annotation


# static fields
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"

.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;

.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 355
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$1;

    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    .line 361
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$2;

    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$2;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

