.class public Lcom/wakeup/smartband/model/DBModel;
.super Lorg/litepal/crud/DataSupport;
.source "DBModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wakeup/smartband/model/DBModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bloodOxygen:I

.field private bloodPressure_high:I

.field private bloodPressure_low:I

.field private calory:I

.field private deep_sleep_time:J

.field private heartRate:I

.field private id:I

.field private measureTime:Ljava/lang/String;

.field myFmt:Ljava/text/SimpleDateFormat;

.field private shallow_sleep_time:J

.field private sleep_time:J

.field private stepCount:I

.field private timeInMillis:Ljava/lang/Long;

.field private tiredType:I

.field private tiredValue:I

.field private type:I

.field private wakeup_times:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    new-instance v0, Lcom/wakeup/smartband/model/DBModel$1;

    invoke-direct {v0}, Lcom/wakeup/smartband/model/DBModel$1;-><init>()V

    sput-object v0, Lcom/wakeup/smartband/model/DBModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

