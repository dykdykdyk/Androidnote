.class public Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;
.super Ljava/lang/Object;
.source "Cryptor.java"


# static fields
.field public static final QUOTIENT:I = 0x4c11db7

.field public static final SALT_LEN:I = 0x2

.field public static final ZERO_LEN:I = 0x7


# instance fields
.field private contextStart:I

.field private crypt:I

.field private header:Z

.field private key:[B

.field private out:[B

.field private padding:I

.field private plain:[B

.field private pos:I

.field private preCrypt:I

.field private prePlain:[B

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

