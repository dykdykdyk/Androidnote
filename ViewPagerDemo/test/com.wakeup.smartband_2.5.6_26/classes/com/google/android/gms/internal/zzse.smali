.class public Lcom/google/android/gms/internal/zzse;
.super Ljava/lang/Object;


# instance fields
.field private final CR:Ljava/lang/String;

.field private final Dk:Lcom/google/android/gms/common/internal/zzq;

.field private final bX:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzse;->CR:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzse;->Dk:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzse;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzse;->bX:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzse;->zzd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLogLevel()I
    .registers 9

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ne v0, v6, :cond_94

    const-string/jumbo v6, "log.tag."

    iget-object v0, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_94

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_a4

    :cond_2c
    :goto_2c
    packed-switch v0, :pswitch_data_c2

    move v0, v3

    :cond_30
    :goto_30
    return v0

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :sswitch_37
    const-string/jumbo v7, "VERBOSE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :sswitch_42
    const-string/jumbo v7, "DEBUG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v0, 0x1

    goto :goto_2c

    :sswitch_4d
    const-string/jumbo v7, "INFO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move v0, v1

    goto :goto_2c

    :sswitch_58
    const-string/jumbo v7, "WARN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move v0, v2

    goto :goto_2c

    :sswitch_63
    const-string/jumbo v7, "ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move v0, v3

    goto :goto_2c

    :sswitch_6e
    const-string/jumbo v7, "ASSERT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move v0, v4

    goto :goto_2c

    :sswitch_79
    const-string/jumbo v7, "SUPPRESS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move v0, v5

    goto :goto_2c

    :pswitch_84
    move v0, v1

    goto :goto_30

    :pswitch_86
    move v0, v2

    goto :goto_30

    :pswitch_88
    move v0, v3

    goto :goto_30

    :pswitch_8a
    move v0, v4

    goto :goto_30

    :pswitch_8c
    move v0, v5

    goto :goto_30

    :pswitch_8e
    const/4 v0, 0x7

    goto :goto_30

    :pswitch_90
    const v0, 0x7fffffff

    goto :goto_30

    :cond_94
    move v0, v1

    :goto_95
    const/4 v1, 0x7

    if-lt v1, v0, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    nop

    :sswitch_data_a4
    .sparse-switch
        -0x347b694b -> :sswitch_79
        0x225cae -> :sswitch_4d
        0x288a86 -> :sswitch_58
        0x3de9e33 -> :sswitch_42
        0x3f2d9e8 -> :sswitch_63
        0x3fb90562 -> :sswitch_37
        0x73a36746 -> :sswitch_6e
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_84
        :pswitch_86
        :pswitch_88
        :pswitch_8a
        :pswitch_8c
        :pswitch_8e
        :pswitch_90
    .end packed-switch
.end method

.method private static varargs zzd([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_2a

    aget-object v3, p0, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_24

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2a
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method protected varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_9

    array-length v0, p2

    if-lez v0, :cond_9

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzse;->CR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs zza(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzse;->zzbf(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzse;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public zzbf(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzse;->bX:I

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs zze(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzse;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzse;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzse;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
