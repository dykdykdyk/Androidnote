.class public final Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;


# static fields
.field private static final Cc:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzi;->Cc:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public static zzce(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    :try_start_17
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsi;->zzcr(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsh;->zzik(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_28

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception v1

    goto :goto_27
.end method

.method public static zzg(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch p1, :sswitch_data_c0

    const-string/jumbo v1, "GoogleApiAvailability"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    :sswitch_24
    return-object v0

    :sswitch_25
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_2c
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_33
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_3a
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_41
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v2, "Google Play services is invalid. Cannot recover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_51
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Network error occurred. Please retry request later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_network_error_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_62
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_6c
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_76
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_invalid_account_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_87
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "The application is not licensed to the user."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_91
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "One of the API components you attempted to connect to is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_9b
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The specified account could not be signed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_sign_in_failed_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    :sswitch_ad
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The current user profile is restricted and could not use authenticated features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_restricted_profile_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_24
        0x5 -> :sswitch_76
        0x6 -> :sswitch_24
        0x7 -> :sswitch_51
        0x8 -> :sswitch_62
        0x9 -> :sswitch_41
        0xa -> :sswitch_6c
        0xb -> :sswitch_87
        0x10 -> :sswitch_91
        0x11 -> :sswitch_9b
        0x12 -> :sswitch_33
        0x14 -> :sswitch_ad
        0x2a -> :sswitch_3a
    .end sparse-switch
.end method

.method private static zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzh(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    const-string/jumbo v0, "common_google_play_services_resolution_required_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzi;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0

    :cond_17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static zzi(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzi;->zzce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sparse-switch p1, :sswitch_data_90

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :sswitch_18
    invoke-static {v0}, Lcom/google/android/gms/common/util/zzi;->zzb(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_29
    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_34
    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_3f
    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_4a
    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_55
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_wear_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_5c
    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_67
    const-string/jumbo v0, "common_google_play_services_network_error_text"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_6f
    const-string/jumbo v0, "common_google_play_services_invalid_account_text"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_77
    const-string/jumbo v0, "common_google_play_services_api_unavailable_text"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_7f
    const-string/jumbo v0, "common_google_play_services_sign_in_failed_text"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :sswitch_87
    const-string/jumbo v0, "common_google_play_services_restricted_profile_text"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    nop

    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_34
        0x5 -> :sswitch_6f
        0x7 -> :sswitch_67
        0x9 -> :sswitch_5c
        0x10 -> :sswitch_77
        0x11 -> :sswitch_7f
        0x12 -> :sswitch_3f
        0x14 -> :sswitch_87
        0x2a -> :sswitch_55
    .end sparse-switch
.end method

.method public static zzj(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    const-string/jumbo v0, "common_google_play_services_resolution_required_text"

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzi;->zzce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzi;->zzi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static zzk(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_24

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_16
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_1d
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_16
    .end packed-switch
.end method

.method private static zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/internal/zzi;->Cc:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/google/android/gms/common/internal/zzi;->Cc:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    monitor-exit v2

    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_19

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_19
    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.google.android.gms"

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Missing resource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_3f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :catchall_45
    move-exception v0

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Got empty resource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_66
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_6c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :cond_72
    sget-object v1, Lcom/google/android/gms/common/internal/zzi;->Cc:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_48 .. :try_end_78} :catchall_45

    goto :goto_f
.end method
