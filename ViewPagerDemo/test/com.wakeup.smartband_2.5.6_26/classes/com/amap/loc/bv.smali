.class public Lcom/amap/loc/bv;
.super Ljava/lang/Object;
.source "GeoHash.java"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/amap/loc/bv;->a:[C

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/amap/loc/bv;->b:[I

    return-void

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6ds
        0x6es
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_36
    .array-data 4
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

