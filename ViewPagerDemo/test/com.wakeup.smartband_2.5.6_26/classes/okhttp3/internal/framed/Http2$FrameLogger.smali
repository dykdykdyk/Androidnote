.class final Lokhttp3/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/16 v11, 0x8

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 704
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v7, "DATA"

    aput-object v7, v5, v6

    const-string/jumbo v7, "HEADERS"

    aput-object v7, v5, v10

    const/4 v7, 0x2

    const-string/jumbo v8, "PRIORITY"

    aput-object v8, v5, v7

    const-string/jumbo v7, "RST_STREAM"

    aput-object v7, v5, v12

    const-string/jumbo v7, "SETTINGS"

    aput-object v7, v5, v13

    const/4 v7, 0x5

    const-string/jumbo v8, "PUSH_PROMISE"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "PING"

    aput-object v8, v5, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "GOAWAY"

    aput-object v8, v5, v7

    const-string/jumbo v7, "WINDOW_UPDATE"

    aput-object v7, v5, v11

    const/16 v7, 0x9

    const-string/jumbo v8, "CONTINUATION"

    aput-object v8, v5, v7

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 721
    const/16 v5, 0x40

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 722
    const/16 v5, 0x100

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 725
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_74

    .line 726
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    const-string/jumbo v7, "%8s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 729
    :cond_74
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string/jumbo v7, ""

    aput-object v7, v5, v6

    .line 730
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string/jumbo v7, "END_STREAM"

    aput-object v7, v5, v10

    .line 732
    new-array v4, v10, [I

    aput v10, v4, v6

    .line 734
    .local v4, "prefixFlags":[I
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string/jumbo v7, "PADDED"

    aput-object v7, v5, v11

    .line 735
    array-length v7, v4

    move v5, v6

    :goto_8f
    if-ge v5, v7, :cond_b4

    aget v3, v4, v5

    .line 736
    .local v3, "prefixFlag":I
    sget-object v8, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v9, v3, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|PADDED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 735
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 739
    .end local v3    # "prefixFlag":I
    :cond_b4
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string/jumbo v7, "END_HEADERS"

    aput-object v7, v5, v13

    .line 740
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v7, 0x20

    const-string/jumbo v8, "PRIORITY"

    aput-object v8, v5, v7

    .line 741
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v7, 0x24

    const-string/jumbo v8, "END_HEADERS|PRIORITY"

    aput-object v8, v5, v7

    .line 742
    new-array v1, v12, [I

    fill-array-data v1, :array_150

    .line 745
    .local v1, "frameFlags":[I
    array-length v8, v1

    move v7, v6

    :goto_d4
    if-ge v7, v8, :cond_138

    aget v0, v1, v7

    .line 746
    .local v0, "frameFlag":I
    array-length v9, v4

    move v5, v6

    :goto_da
    if-ge v5, v9, :cond_134

    aget v3, v4, v5

    .line 747
    .restart local v3    # "prefixFlag":I
    sget-object v10, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v3, v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 748
    sget-object v10, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v3, v0

    or-int/lit8 v11, v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 746
    add-int/lit8 v5, v5, 0x1

    goto :goto_da

    .line 745
    .end local v3    # "prefixFlag":I
    :cond_134
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_d4

    .line 753
    .end local v0    # "frameFlag":I
    :cond_138
    const/4 v2, 0x0

    :goto_139
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_14f

    .line 754
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_14c

    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    sget-object v6, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 753
    :cond_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_139

    .line 756
    :cond_14f
    return-void

    .line 742
    :array_150
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

