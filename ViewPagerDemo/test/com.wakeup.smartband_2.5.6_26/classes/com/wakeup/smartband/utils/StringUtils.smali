.class public Lcom/wakeup/smartband/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final startNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 297
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Hero"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Health"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "M8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "C1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Z18"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "OSSINE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "T1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "S2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "B15S"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "F1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "SX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "OCECCA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "BP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "WeiErmi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wakeup/smartband/utils/StringUtils;->startNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

