.class public Lcom/google/android/gms/common/zze;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field public static uX:Z

.field public static uY:Z

.field static uZ:Z

.field private static va:Ljava/lang/String;

.field private static vb:I

.field private static vc:Z

.field static final vd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzapk()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput-boolean v1, Lcom/google/android/gms/common/zze;->uX:Z

    sput-boolean v1, Lcom/google/android/gms/common/zze;->uY:Z

    sput-boolean v1, Lcom/google/android/gms/common/zze;->uZ:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/zze;->va:Ljava/lang/String;

    sput v1, Lcom/google/android/gms/common/zze;->vb:I

    sput-boolean v1, Lcom/google/android/gms/common/zze;->vc:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zze;->vd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zze;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzapd()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/google/android/gms/common/zzc;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenSourceSoftwareLicenseInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "android.resource"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "raw"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "oss_notice"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_53

    move-result-object v2

    :try_start_2e
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v3, "\\A"

    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/util/NoSuchElementException; {:try_start_2e .. :try_end_3d} :catch_44
    .catchall {:try_start_2e .. :try_end_3d} :catchall_4c

    move-result-object v0

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_43
    :goto_43
    return-object v0

    :catch_44
    move-exception v0

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4a
    move-object v0, v1

    goto :goto_43

    :catchall_4c
    move-exception v0

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_52
    throw v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_53} :catch_53

    :catch_53
    move-exception v0

    move-object v0, v1

    goto :goto_43
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_55

    :goto_11
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbt(Landroid/content/Context;)V

    :cond_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzi;->zzcl(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_60

    move v4, v1

    :goto_28
    const/4 v3, 0x0

    if-eqz v4, :cond_34

    :try_start_2b
    const-string/jumbo v3, "com.android.vending"

    const/16 v6, 0x2040

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_33} :catch_62

    move-result-object v3

    :cond_34
    :try_start_34
    const-string/jumbo v6, "com.google.android.gms"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_3c} :catch_6d

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v7

    if-eqz v4, :cond_8d

    sget-object v4, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_79

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return v0

    :catch_55
    move-exception v3

    const-string/jumbo v3, "GooglePlayServicesUtil"

    const-string/jumbo v4, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_60
    move v4, v2

    goto :goto_28

    :catch_62
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store is missing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catch_6d
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services is missing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_54

    :cond_79
    new-array v4, v1, [Lcom/google/android/gms/common/zzd$zza;

    aput-object v3, v4, v2

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_9f

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_8d
    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {v7, v6, v3}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_9f

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_9f
    sget v0, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzl;->zzhj(I)I

    move-result v0

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/google/android/gms/common/util/zzl;->zzhj(I)I

    move-result v3

    if-ge v3, v0, :cond_db

    const-string/jumbo v0, "GooglePlayServicesUtil"

    sget v1, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iget v2, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Google Play services out of date.  Requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto/16 :goto_54

    :cond_db
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e7

    :try_start_df
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_e6} :catch_ee

    move-result-object v0

    :cond_e7
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_fb

    const/4 v0, 0x3

    goto/16 :goto_54

    :catch_ee
    move-exception v0

    const-string/jumbo v2, "GooglePlayServicesUtil"

    const-string/jumbo v3, "Google Play services missing when getting application info."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto/16 :goto_54

    :cond_fb
    move v0, v2

    goto/16 :goto_54
.end method

.method public static isUserRecoverableError(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static zzapk()I
    .registers 1

    sget v0, Lcom/google/android/gms/common/internal/zzf;->BA:I

    return v0
.end method

.method public static zzapl()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static zzb(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zzbc(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzapd()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzapd()Lcom/google/android/gms/common/zzc;

    move-result-object v1

    const-string/jumbo v2, "e"

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "GooglePlayServices not available due to error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_39

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_39
    new-instance v2, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string/jumbo v3, "Google Play Services not available"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_42
    return-void
.end method

.method public static zzbo(Landroid/content/Context;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_10

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_f
    return v0

    :catch_10
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services is missing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static zzbq(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/zze;->vd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :try_start_a
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_9

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_9

    :catch_1b
    move-exception v0

    goto :goto_9
.end method

.method private static zzbt(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/common/zze;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbx(Landroid/content/Context;)V

    sget v0, Lcom/google/android/gms/common/zze;->vb:I

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget v0, Lcom/google/android/gms/common/zze;->vb:I

    sget v1, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    sget v1, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sget v2, Lcom/google/android/gms/common/zze;->vb:I

    const-string/jumbo v3, "com.google.android.gms.version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x122

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " but found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzbu(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbx(Landroid/content/Context;)V

    sget-boolean v0, Lcom/google/android/gms/common/zze;->uZ:Z

    return v0
.end method

.method public static zzbv(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzapl()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static zzbw(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxq()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "restricted_profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static zzbx(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/google/android/gms/common/zze;->vc:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzby(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private static zzby(Landroid/content/Context;)V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zze;->va:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzch(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/google/android/gms/common/zze;->vb:I

    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/zzd$zza;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/common/zzd$zzd;->uW:[Lcom/google/android/gms/common/zzd$zza;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/common/zze;->uZ:Z
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_34} :catch_3b
    .catchall {:try_start_1 .. :try_end_34} :catchall_48

    :goto_34
    sput-boolean v6, Lcom/google/android/gms/common/zze;->vc:Z

    :goto_36
    return-void

    :cond_37
    const/4 v0, 0x0

    :try_start_38
    sput-boolean v0, Lcom/google/android/gms/common/zze;->uZ:Z
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_3a} :catch_3b
    .catchall {:try_start_38 .. :try_end_3a} :catchall_48

    goto :goto_34

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Cannot find Google Play services package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_48

    sput-boolean v6, Lcom/google/android/gms/common/zze;->vc:Z

    goto :goto_36

    :catchall_48
    move-exception v0

    sput-boolean v6, Lcom/google/android/gms/common/zze;->vc:Z

    throw v0
.end method

.method public static zzd(Landroid/content/Context;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    if-ne p1, v0, :cond_10

    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/zze;->zzs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static zze(Landroid/content/Context;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-ne p1, v0, :cond_c

    const-string/jumbo v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/zze;->zzs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static zzf(Landroid/content/Context;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/zzy;->zzf(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static zzfm(I)Landroid/content/Intent;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzapd()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v1}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static zzfn(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x12 -> :sswitch_5
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method static zzs(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->zzact()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return v2

    :cond_12
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzaxu()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v2, v1

    goto :goto_11

    :cond_40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x2000

    :try_start_46
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v3, :cond_4f

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_11

    :cond_4f
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5c

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->zzbw(Landroid/content/Context;)Z
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_56} :catch_5e

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_5a
    move v2, v0

    goto :goto_11

    :cond_5c
    move v0, v2

    goto :goto_5a

    :catch_5e
    move-exception v0

    goto :goto_11
.end method
