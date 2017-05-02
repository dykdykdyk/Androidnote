.class public abstract Lcom/google/android/gms/maps/model/UrlTileProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private final zzajw:I

.field private final zzajx:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzajw:I

    iput p2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzajx:I

    return-void
.end method

.method private static zzb(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    return-wide v0

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_6
.end method

.method private static zzm(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzb(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v0, Lcom/google/android/gms/maps/model/UrlTileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/gms/maps/model/Tile;

    iget v2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzajw:I

    iget v3, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzajx:I

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzm(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method
