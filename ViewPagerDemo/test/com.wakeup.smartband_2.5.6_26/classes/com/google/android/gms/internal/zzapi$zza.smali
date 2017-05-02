.class final Lcom/google/android/gms/internal/zzapi$zza;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzapi$zza$zza;
    }
.end annotation


# instance fields
.field private final bmi:Ljava/lang/Appendable;

.field private final bmj:Lcom/google/android/gms/internal/zzapi$zza$zza;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzapi$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapi$zza$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmj:Lcom/google/android/gms/internal/zzapi$zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmi:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzapi$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapi$zza;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmi:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmj:Lcom/google/android/gms/internal/zzapi$zza$zza;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzapi$zza$zza;->bmk:[C

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmi:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapi$zza;->bmj:Lcom/google/android/gms/internal/zzapi$zza$zza;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
