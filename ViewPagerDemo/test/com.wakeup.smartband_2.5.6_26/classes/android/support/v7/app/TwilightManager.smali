.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$1;,
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static final sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>(Landroid/support/v7/app/TwilightManager$1;)V

    sput-object v0, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 47
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 48
    return-void
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 9

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "coarseLocation":Landroid/location/Location;
    const/4 v1, 0x0

    .line 85
    .local v1, "fineLocation":Landroid/location/Location;
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "permission":I
    if-nez v2, :cond_14

    .line 88
    const-string/jumbo v3, "network"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 91
    :cond_14
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 93
    if-nez v2, :cond_26

    .line 94
    const-string/jumbo v3, "gps"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 97
    :cond_26
    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 99
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_37

    .line 106
    .end local v1    # "fineLocation":Landroid/location/Location;
    :cond_36
    :goto_36
    return-object v1

    .restart local v1    # "fineLocation":Landroid/location/Location;
    :cond_37
    move-object v1, v0

    .line 102
    goto :goto_36

    .line 106
    :cond_39
    if-nez v1, :cond_36

    move-object v1, v0

    goto :goto_36
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1d

    .line 113
    :try_start_4
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 114
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v1

    .line 120
    :goto_12
    return-object v1

    .line 116
    :catch_13
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TwilightManager"

    const-string/jumbo v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private isStateValid(Landroid/support/v7/app/TwilightManager$TwilightState;)Z
    .registers 6
    .param p1, "state"    # Landroid/support/v7/app/TwilightManager$TwilightState;

    .prologue
    .line 124
    if-eqz p1, :cond_e

    iget-wide v0, p1, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 26
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    sget-object v14, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 129
    .local v14, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 130
    .local v12, "now":J
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v3

    .line 133
    .local v3, "calculator":Landroid/support/v7/app/TwilightCalculator;
    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 135
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v22, v0

    .line 138
    .local v22, "yesterdaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 139
    iget v4, v3, Landroid/support/v7/app/TwilightCalculator;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_73

    const/4 v2, 0x1

    .line 140
    .local v2, "isNight":Z
    :goto_30
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    .line 141
    .local v16, "todaySunrise":J
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    .line 144
    .local v18, "todaySunset":J
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 146
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    .line 149
    .local v20, "tomorrowSunrise":J
    const-wide/16 v10, 0x0

    .line 150
    .local v10, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_59

    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-nez v4, :cond_75

    .line 152
    :cond_59
    const-wide/32 v4, 0x2932e00

    add-long v10, v12, v4

    .line 166
    :goto_5e
    iput-boolean v2, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 167
    move-wide/from16 v0, v22

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 168
    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 169
    move-wide/from16 v0, v18

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 170
    move-wide/from16 v0, v20

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 171
    iput-wide v10, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 172
    return-void

    .line 139
    .end local v2    # "isNight":Z
    .end local v10    # "nextUpdate":J
    .end local v16    # "todaySunrise":J
    .end local v18    # "todaySunset":J
    .end local v20    # "tomorrowSunrise":J
    :cond_73
    const/4 v2, 0x0

    goto :goto_30

    .line 154
    .restart local v2    # "isNight":Z
    .restart local v10    # "nextUpdate":J
    .restart local v16    # "todaySunrise":J
    .restart local v18    # "todaySunset":J
    .restart local v20    # "tomorrowSunrise":J
    :cond_75
    cmp-long v4, v12, v18

    if-lez v4, :cond_80

    .line 155
    add-long v10, v10, v20

    .line 162
    :goto_7b
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_5e

    .line 156
    :cond_80
    cmp-long v4, v12, v16

    if-lez v4, :cond_87

    .line 157
    add-long v10, v10, v18

    goto :goto_7b

    .line 159
    :cond_87
    add-long v10, v10, v16

    goto :goto_7b
.end method


# virtual methods
.method isNight()Z
    .registers 7

    .prologue
    .line 56
    sget-object v3, Landroid/support/v7/app/TwilightManager;->sTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 58
    .local v3, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->isStateValid(Landroid/support/v7/app/TwilightManager$TwilightState;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 60
    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 78
    :goto_a
    return v4

    .line 64
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    .line 65
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_17

    .line 66
    invoke-direct {p0, v2}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 67
    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    goto :goto_a

    .line 70
    :cond_17
    const-string/jumbo v4, "TwilightManager"

    const-string/jumbo v5, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 78
    .local v1, "hour":I
    const/4 v4, 0x6

    if-lt v1, v4, :cond_31

    const/16 v4, 0x16

    if-lt v1, v4, :cond_33

    :cond_31
    const/4 v4, 0x1

    goto :goto_a

    :cond_33
    const/4 v4, 0x0

    goto :goto_a
.end method
