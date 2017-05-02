.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final uJ:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field final mVersionCode:I

.field private final rR:I

.field private final uK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->uJ:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static getStatusString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_86

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :sswitch_21
    const-string/jumbo v0, "SUCCESS"

    goto :goto_20

    :sswitch_25
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_20

    :sswitch_29
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_20

    :sswitch_2d
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_20

    :sswitch_31
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_20

    :sswitch_35
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_20

    :sswitch_39
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_20

    :sswitch_3d
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_20

    :sswitch_41
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_20

    :sswitch_45
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_20

    :sswitch_49
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_20

    :sswitch_4d
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_20

    :sswitch_51
    const-string/jumbo v0, "CANCELED"

    goto :goto_20

    :sswitch_55
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_20

    :sswitch_59
    const-string/jumbo v0, "INTERRUPTED"

    goto :goto_20

    :sswitch_5d
    const-string/jumbo v0, "API_UNAVAILABLE"

    goto :goto_20

    :sswitch_61
    const-string/jumbo v0, "SIGN_IN_FAILED"

    goto :goto_20

    :sswitch_65
    const-string/jumbo v0, "SERVICE_UPDATING"

    goto :goto_20

    :sswitch_69
    const-string/jumbo v0, "SERVICE_MISSING_PERMISSION"

    goto :goto_20

    :sswitch_6d
    const-string/jumbo v0, "RESTRICTED_PROFILE"

    goto :goto_20

    :sswitch_71
    const-string/jumbo v0, "API_VERSION_UPDATE_REQUIRED"

    goto :goto_20

    :sswitch_75
    const-string/jumbo v0, "UPDATE_ANDROID_WEAR"

    goto :goto_20

    :sswitch_79
    const-string/jumbo v0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto :goto_20

    :sswitch_7d
    const-string/jumbo v0, "UNFINISHED"

    goto :goto_20

    :sswitch_81
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_20

    nop

    :sswitch_data_86
    .sparse-switch
        -0x1 -> :sswitch_81
        0x0 -> :sswitch_21
        0x1 -> :sswitch_25
        0x2 -> :sswitch_29
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_31
        0x5 -> :sswitch_35
        0x6 -> :sswitch_39
        0x7 -> :sswitch_3d
        0x8 -> :sswitch_41
        0x9 -> :sswitch_45
        0xa -> :sswitch_49
        0xb -> :sswitch_4d
        0xd -> :sswitch_51
        0xe -> :sswitch_55
        0xf -> :sswitch_59
        0x10 -> :sswitch_5d
        0x11 -> :sswitch_61
        0x12 -> :sswitch_65
        0x13 -> :sswitch_69
        0x14 -> :sswitch_6d
        0x15 -> :sswitch_71
        0x2a -> :sswitch_75
        0x63 -> :sswitch_7d
        0x5dc -> :sswitch_79
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasResolution()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "statusCode"

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->rR:I

    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->uK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzab$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzab$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/zzb;->zza(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
