.class public Lcom/amap/loc/bz;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/amap/loc/bz;->a:[C

    new-array v0, v1, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/amap/loc/bz;->b:[B

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/amap/loc/bz;->b:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/amap/loc/bz;->c:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    :array_1a
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_2e
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x8t
        0xdt
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

