.class Lcom/google/android/gms/fitness/data/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzta",
        "<",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final Pd:Lcom/google/android/gms/fitness/data/zzf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzf;->Pd:Lcom/google/android/gms/fitness/data/zzf;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataType;I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzaf(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzf;->zzb(Lcom/google/android/gms/fitness/data/DataType;)I

    move-result v0

    return v0
.end method

.method public synthetic zzag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzf;->zza(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataType;)I
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataType;I)Z
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Field;->isOptional()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzc(Lcom/google/android/gms/fitness/data/DataType;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v0

    return v0
.end method

.method public synthetic zze(Ljava/lang/Object;I)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzc(Lcom/google/android/gms/fitness/data/DataType;I)I

    move-result v0

    return v0
.end method

.method public synthetic zzf(Ljava/lang/Object;I)Z
    .registers 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zzb(Lcom/google/android/gms/fitness/data/DataType;I)Z

    move-result v0

    return v0
.end method

.method public synthetic zzg(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzf;->zza(Lcom/google/android/gms/fitness/data/DataType;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzjg(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzk;->zzjh(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
