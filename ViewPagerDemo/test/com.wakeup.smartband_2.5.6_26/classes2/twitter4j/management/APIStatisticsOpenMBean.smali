.class public Ltwitter4j/management/APIStatisticsOpenMBean;
.super Ljava/lang/Object;
.source "APIStatisticsOpenMBean.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field private static final ITEM_DESCRIPTIONS:[Ljava/lang/String;

.field private static final ITEM_NAMES:[Ljava/lang/String;

.field private static final ITEM_TYPES:[Ljavax/management/openmbean/OpenType;


# instance fields
.field private final API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

.field private final API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

.field private final METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "methodName"

    aput-object v1, v0, v2

    const-string/jumbo v1, "callCount"

    aput-object v1, v0, v3

    const-string/jumbo v1, "errorCount"

    aput-object v1, v0, v4

    const-string/jumbo v1, "totalTime"

    aput-object v1, v0, v5

    const-string/jumbo v1, "avgTime"

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/management/openmbean/OpenType;

    sget-object v1, Ljavax/management/openmbean/SimpleType;->STRING:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_TYPES:[Ljavax/management/openmbean/OpenType;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "The method name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "The number of times this method has been called"

    aput-object v1, v0, v3

    const-string/jumbo v1, "The number of calls that failed"

    aput-object v1, v0, v4

    const-string/jumbo v1, "The total amount of time spent invoking this method in milliseconds"

    aput-object v1, v0, v5

    const-string/jumbo v1, "The average amount of time spent invoking this method in milliseconds"

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_DESCRIPTIONS:[Ljava/lang/String;

    return-void
.end method

