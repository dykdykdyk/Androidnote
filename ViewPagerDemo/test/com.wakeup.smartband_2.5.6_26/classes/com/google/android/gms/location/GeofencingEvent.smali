.class public Lcom/google/android/gms/location/GeofencingEvent;
.super Ljava/lang/Object;


# instance fields
.field private final ahb:I

.field private final ahc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final ahd:Landroid/location/Location;

.field private final zzcdb:I


# direct methods
.method private constructor <init>(IILjava/util/List;Landroid/location/Location;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzcdb:I

    iput p2, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahb:I

    iput-object p3, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahd:Landroid/location/Location;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "gms_error_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->zzaa(Landroid/content/Intent;)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->zzab(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v0, "com.google.android.location.intent.extra.triggering_location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    new-instance v1, Lcom/google/android/gms/location/GeofencingEvent;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/location/GeofencingEvent;-><init>(IILjava/util/List;Landroid/location/Location;)V

    move-object v0, v1

    goto :goto_3
.end method

.method private static zzaa(Landroid/content/Intent;)I
    .registers 4

    const/4 v0, -0x1

    const-string/jumbo v1, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    :cond_14
    move v0, v1

    goto :goto_a
.end method

.method private static zzab(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->zzv([B)Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    move-object v0, v1

    goto :goto_c
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzcdb:I

    return v0
.end method

.method public getGeofenceTransition()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahb:I

    return v0
.end method

.method public getTriggeringGeofences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahc:Ljava/util/List;

    return-object v0
.end method

.method public getTriggeringLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->ahd:Landroid/location/Location;

    return-object v0
.end method

.method public hasError()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->zzcdb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
