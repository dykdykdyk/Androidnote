.class public Lcom/google/android/gms/auth/api/signin/internal/zzk;
.super Ljava/lang/Object;


# static fields
.field private static final hI:Ljava/util/concurrent/locks/Lock;

.field private static hJ:Lcom/google/android/gms/auth/api/signin/internal/zzk;


# instance fields
.field private final hK:Ljava/util/concurrent/locks/Lock;

.field private final hL:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hI:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    const-string/jumbo v0, "com.google.android.gms.signin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hL:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static zzbd(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hJ:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hJ:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    :cond_17
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hJ:Lcom/google/android/gms/auth/api/signin/internal/zzk;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1f

    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1f
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, ":"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzahf()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "googleSignInAccount"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzahh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "googleSignInOptions"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzahg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzaic()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    const-string/jumbo v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzga(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method public zzaid()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .registers 2

    const-string/jumbo v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgb(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method

.method public zzaie()V
    .registers 3

    const-string/jumbo v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzge(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgd(Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "defaultGoogleSignInAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzahf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method zzga(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v1, "googleSignInAccount"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_15
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzfw(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_7

    :catch_1a
    move-exception v1

    goto :goto_7
.end method

.method zzgb(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v1, "googleSignInOptions"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzgc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_15
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzfy(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_7

    :catch_1a
    move-exception v1

    goto :goto_7
.end method

.method protected zzgc(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hL:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzgd(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string/jumbo v0, "googleSignInAccount"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzge(Ljava/lang/String;)V

    const-string/jumbo v0, "googleSignInOptions"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzge(Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected zzge(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hL:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected zzx(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hL:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzk;->hK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
