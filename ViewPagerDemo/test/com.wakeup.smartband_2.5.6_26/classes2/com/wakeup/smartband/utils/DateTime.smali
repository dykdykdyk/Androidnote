.class public Lcom/wakeup/smartband/utils/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field public static final DEFHMS:Ljava/lang/String; = "HH:mm:ss"

.field public static final DEFYMD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DEFYMDHMS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static weeks:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 293
    const/4 v0, 0x0

    sput v0, Lcom/wakeup/smartband/utils/DateTime;->weeks:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

