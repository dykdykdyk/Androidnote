.class public Lcom/google/android/gms/internal/zzqz;
.super Ljava/lang/Object;


# instance fields
.field private final yX:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxk()Z

    move-result v0

    if-nez v0, :cond_13

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1d

    :cond_13
    const/4 v0, 0x1

    :goto_14
    const-string/jumbo v1, "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqz;->yX:Ljava/lang/Object;

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public zzasn()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz;->yX:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    return v0
.end method

.method public zzaso()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz;->yX:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public zzasp()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz;->yX:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method
