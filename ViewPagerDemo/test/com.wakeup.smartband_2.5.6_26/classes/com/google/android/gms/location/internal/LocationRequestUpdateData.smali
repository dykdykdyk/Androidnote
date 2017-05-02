.class public Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzn;


# instance fields
.field aii:I

.field aij:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field aik:Lcom/google/android/gms/location/zzg;

.field ail:Lcom/google/android/gms/location/zzf;

.field aim:Lcom/google/android/gms/location/internal/zzg;

.field mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->CREATOR:Lcom/google/android/gms/location/internal/zzn;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aii:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aij:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-nez p4, :cond_1b

    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aik:Lcom/google/android/gms/location/zzg;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p6, :cond_20

    move-object v0, v1

    :goto_14
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->ail:Lcom/google/android/gms/location/zzf;

    if-nez p7, :cond_25

    :goto_18
    iput-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aim:Lcom/google/android/gms/location/internal/zzg;

    return-void

    :cond_1b
    invoke-static {p4}, Lcom/google/android/gms/location/zzg$zza;->zzgy(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzg;

    move-result-object v0

    goto :goto_d

    :cond_20
    invoke-static {p6}, Lcom/google/android/gms/location/zzf$zza;->zzgx(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    goto :goto_14

    :cond_25
    invoke-static {p7}, Lcom/google/android/gms/location/internal/zzg$zza;->zzha(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v1

    goto :goto_18
.end method

.method public static zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 11
    .param p2    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    if-eqz p2, :cond_12

    invoke-interface {p2}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_a
    move v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    move-object v7, v4

    goto :goto_a
.end method

.method public static zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 11
    .param p2    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p2, :cond_15

    invoke-interface {p2}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_e
    move v2, v1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_15
    move-object v7, v4

    goto :goto_e
.end method

.method public static zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/zzg;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 11
    .param p2    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p2, :cond_15

    invoke-interface {p2}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_e
    move v2, v1

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_15
    move-object v7, v5

    goto :goto_e
.end method

.method public static zza(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 10
    .param p1    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_f
    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_15
    move-object v7, v3

    goto :goto_f
.end method

.method public static zza(Lcom/google/android/gms/location/zzg;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 10
    .param p1    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_f
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_15
    move-object v7, v3

    goto :goto_f
.end method

.method public static zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .registers 10
    .param p1    # Lcom/google/android/gms/location/internal/zzg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_b
    move-object v4, v3

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    move-object v7, v3

    goto :goto_b
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzn;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbpn()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aik:Lcom/google/android/gms/location/zzg;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aik:Lcom/google/android/gms/location/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method zzbpo()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->ail:Lcom/google/android/gms/location/zzf;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->ail:Lcom/google/android/gms/location/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method zzbpp()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aim:Lcom/google/android/gms/location/internal/zzg;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->aim:Lcom/google/android/gms/location/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method
