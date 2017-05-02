.class public Lcom/google/android/gms/internal/zzafz;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final aRT:Landroid/net/Uri;

.field public static final aRU:Ljava/util/regex/Pattern;

.field public static final aRV:Ljava/util/regex/Pattern;

.field static aRW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aRX:Ljava/lang/Object;

.field static aRY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string/jumbo v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRT:Landroid/net/Uri;

    const-string/jumbo v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRU:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRV:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRY:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzafz;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-wide p2

    :cond_a
    :goto_a
    return-wide p2

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzafz;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v1, Lcom/google/android/gms/internal/zzafz;

    monitor-enter v1

    :try_start_5
    invoke-static {p0}, Lcom/google/android/gms/internal/zzafz;->zza(Landroid/content/ContentResolver;)V

    sget-object v6, Lcom/google/android/gms/internal/zzafz;->aRX:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    move-object p2, v0

    :cond_1d
    monitor-exit v1

    :cond_1e
    :goto_1e
    return-object p2

    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_39

    sget-object v0, Lcom/google/android/gms/internal/zzafz;->aRY:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_1e

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    sget-object v1, Lcom/google/android/gms/internal/zzafz;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_52

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5e

    :cond_52
    sget-object v0, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_7c

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :cond_5e
    const/4 v0, 0x1

    :try_start_5f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/zzafz;

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_7c

    :try_start_66
    sget-object v3, Lcom/google/android/gms/internal/zzafz;->aRX:Ljava/lang/Object;

    if-ne v6, v3, :cond_6f

    sget-object v3, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_79

    if-eqz v0, :cond_73

    move-object p2, v0

    :cond_73
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v0

    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
.end method

.method public static varargs zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzafz;->aRT:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_13

    :catchall_27
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method private static zza(Landroid/content/ContentResolver;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafz;->aRX:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzafz$1;

    const-string/jumbo v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/zzafz$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafz$1;->start()V

    :cond_1d
    return-void
.end method

.method public static varargs zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 7

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzafz;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/zzafz;

    monitor-enter v2

    :try_start_7
    invoke-static {p0}, Lcom/google/android/gms/internal/zzafz;->zza(Landroid/content/ContentResolver;)V

    sget-object v1, Lcom/google/android/gms/internal/zzafz;->aRY:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/google/android/gms/internal/zzafz;->aRW:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_39
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    return-void
.end method

.method static synthetic zzbd(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/zzafz;->aRX:Ljava/lang/Object;

    return-object p0
.end method
