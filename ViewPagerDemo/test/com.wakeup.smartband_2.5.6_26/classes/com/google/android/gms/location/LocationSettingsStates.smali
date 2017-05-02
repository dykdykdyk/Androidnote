.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ahA:Z

.field private final ahB:Z

.field private final ahC:Z

.field private final ahD:Z

.field private final ahE:Z

.field private final ahF:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZ)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahA:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahB:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahC:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahD:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahE:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahF:Z

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationSettingsStates;
    .registers 3

    const-string/jumbo v0, "com.google.android.gms.location.LOCATION_SETTINGS_STATES"

    sget-object v1, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    return v0
.end method

.method public isBlePresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahF:Z

    return v0
.end method

.method public isBleUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahC:Z

    return v0
.end method

.method public isGpsPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahD:Z

    return v0
.end method

.method public isGpsUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahA:Z

    return v0
.end method

.method public isLocationPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahD:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahE:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLocationUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahA:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahB:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNetworkLocationPresent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahE:Z

    return v0
.end method

.method public isNetworkLocationUsable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->ahB:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzk;->zza(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method
