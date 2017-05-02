.class public Lcom/google/android/gms/fitness/Fitness;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_TRACK:Ljava/lang/String; = "vnd.google.fitness.TRACK"

.field public static final ACTION_VIEW:Ljava/lang/String; = "vnd.google.fitness.VIEW"

.field public static final ACTION_VIEW_GOAL:Ljava/lang/String; = "vnd.google.fitness.VIEW_GOAL"

.field public static final API:Ljava/lang/Void;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLE_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final BleApi:Lcom/google/android/gms/fitness/BleApi;

.field public static final CONFIG_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

.field public static final EXTRA_END_TIME:Ljava/lang/String; = "vnd.google.fitness.end_time"

.field public static final EXTRA_START_TIME:Ljava/lang/String; = "vnd.google.fitness.start_time"

.field public static final HISTORY_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

.field public static final Hp:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final OI:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final OJ:Lcom/google/android/gms/fitness/zzb;

.field public static final OK:Lcom/google/android/gms/internal/zzuj;

.field public static final RECORDING_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

.field public static final SCOPE_ACTIVITY_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_ACTIVITY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_BODY_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_BODY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_LOCATION_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_LOCATION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_NUTRITION_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_NUTRITION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SENSORS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

.field public static final SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->API:Ljava/lang/Void;

    sget-object v0, Lcom/google/android/gms/internal/zztm;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SENSORS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzuq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

    sget-object v0, Lcom/google/android/gms/internal/zztl;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->RECORDING_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzup;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

    sget-object v0, Lcom/google/android/gms/internal/zztn;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SESSIONS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzur;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;

    sget-object v0, Lcom/google/android/gms/internal/zztj;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->HISTORY_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzun;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    sget-object v0, Lcom/google/android/gms/internal/zzti;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->OI:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzum;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->OJ:Lcom/google/android/gms/fitness/zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzth;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->CONFIG_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzul;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

    sget-object v0, Lcom/google/android/gms/internal/zztg;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->BLE_API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/fitness/Fitness;->zzbdz()Lcom/google/android/gms/fitness/BleApi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->BleApi:Lcom/google/android/gms/fitness/BleApi;

    sget-object v0, Lcom/google/android/gms/internal/zztk;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->Hp:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuo;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->OK:Lcom/google/android/gms/internal/zzuj;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_ACTIVITY_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_ACTIVITY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_LOCATION_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_LOCATION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_BODY_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_BODY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.nutrition.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_NUTRITION_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/fitness.nutrition.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_NUTRITION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndTime(Landroid/content/Intent;Ljava/util/concurrent/TimeUnit;)J
    .registers 7

    const-wide/16 v0, -0x1

    const-string/jumbo v2, "vnd.google.fitness.end_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_e

    :goto_d
    return-wide v0

    :cond_e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_d
.end method

.method public static getStartTime(Landroid/content/Intent;Ljava/util/concurrent/TimeUnit;)J
    .registers 7

    const-wide/16 v0, -0x1

    const-string/jumbo v2, "vnd.google.fitness.start_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_e

    :goto_d
    return-wide v0

    :cond_e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_d
.end method

.method private static zzbdz()Lcom/google/android/gms/fitness/BleApi;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/zzuk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuk;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/zzut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzut;-><init>()V

    goto :goto_b
.end method
