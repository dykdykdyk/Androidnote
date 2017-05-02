.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Lcom/google/zxing/qrcode/detector/Detector;
.source "MultiDetector.java"


# static fields
.field private static final EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 45
    return-void
.end method


# virtual methods
.method public detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 49
    .local v3, "image":Lcom/google/zxing/common/BitMatrix;
    if-nez p1, :cond_18

    const/4 v8, 0x0

    .line 51
    .local v8, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_7
    new-instance v1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;

    invoke-direct {v1, v3, v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 52
    .local v1, "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    invoke-virtual {v1, p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v5

    .line 54
    .local v5, "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    array-length v9, v5

    if-nez v9, :cond_22

    .line 55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 49
    .end local v1    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .end local v5    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v8    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_18
    sget-object v9, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/ResultPointCallback;

    move-object v8, v9

    goto :goto_7

    .line 58
    .restart local v1    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .restart local v5    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .restart local v8    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/common/DetectorResult;>;"
    move-object v0, v5

    .local v0, "arr$":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2a
    if-ge v2, v6, :cond_38

    aget-object v4, v0, v2

    .line 61
    .local v4, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :try_start_2e
    invoke-virtual {p0, v4}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Lcom/google/zxing/ReaderException; {:try_start_2e .. :try_end_35} :catch_4e

    .line 59
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 66
    .end local v4    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_38
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 67
    sget-object v9, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    .line 69
    :goto_40
    return-object v9

    :cond_41
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/zxing/common/DetectorResult;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/zxing/common/DetectorResult;

    goto :goto_40

    .line 62
    .restart local v4    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :catch_4e
    move-exception v9

    goto :goto_35
.end method
