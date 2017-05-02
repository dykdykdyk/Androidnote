.class Lcom/google/android/gms/fitness/data/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzsz",
        "<",
        "Lcom/google/android/gms/fitness/data/DataPoint;",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final Pc:Lcom/google/android/gms/fitness/data/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zze;->Pc:Lcom/google/android/gms/fitness/data/zze;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/concurrent/TimeUnit;)J
    .registers 7

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zze;->zza(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataPoint;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zznt(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v0

    return v0
.end method

.method public synthetic zzad(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zze;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzae(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zze;->zza(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Ljava/lang/Object;I)D
    .registers 5

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zze;->zzc(Lcom/google/android/gms/fitness/data/DataPoint;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataPoint;I)I
    .registers 4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zznt(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataType;
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public zzbed()Lcom/google/android/gms/internal/zzta;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzta",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/fitness/data/zzf;->Pd:Lcom/google/android/gms/fitness/data/zzf;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/fitness/data/DataPoint;I)D
    .registers 5

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zznt(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public synthetic zzc(Ljava/lang/Object;I)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zze;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;I)I

    move-result v0

    return v0
.end method

.method public synthetic zzd(Ljava/lang/Object;I)Z
    .registers 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zze;->zza(Lcom/google/android/gms/fitness/data/DataPoint;I)Z

    move-result v0

    return v0
.end method
