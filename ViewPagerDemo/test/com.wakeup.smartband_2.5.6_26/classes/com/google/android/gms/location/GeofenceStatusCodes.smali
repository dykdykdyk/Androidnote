.class public final Lcom/google/android/gms/location/GeofenceStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GEOFENCE_NOT_AVAILABLE"

    goto :goto_7

    :pswitch_c
    const-string/jumbo v0, "GEOFENCE_TOO_MANY_GEOFENCES"

    goto :goto_7

    :pswitch_10
    const-string/jumbo v0, "GEOFENCE_TOO_MANY_PENDING_INTENTS"

    goto :goto_7

    :pswitch_data_14
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method
