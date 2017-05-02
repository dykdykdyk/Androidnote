.class public abstract Lcom/umeng/socialize/net/utils/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD:B = 0x3dt

.field protected static final PAD_DEFAULT:B = 0x3dt


# instance fields
.field protected mBuffer:[B

.field private final mChunkSeparatorLength:I

.field protected mCurrentLinePos:I

.field private final mEncodedBlockSize:I

.field protected mEof:Z

.field protected final mLineLength:I

.field protected mModulus:I

.field protected mPos:I

.field private mReadPos:I

.field private final mUnencodedBlockSize:I


# direct methods
