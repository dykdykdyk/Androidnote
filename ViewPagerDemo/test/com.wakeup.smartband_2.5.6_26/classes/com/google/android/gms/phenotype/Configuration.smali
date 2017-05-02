.class public Lcom/google/android/gms/phenotype/Configuration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/phenotype/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/phenotype/Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final axl:I

.field public final axm:[Lcom/google/android/gms/phenotype/Flag;

.field public final axn:[Ljava/lang/String;

.field public final axo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/phenotype/Flag;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/phenotype/zza;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[Lcom/google/android/gms/phenotype/Flag;[Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/Configuration;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    iput-object p3, p0, Lcom/google/android/gms/phenotype/Configuration;->axm:[Lcom/google/android/gms/phenotype/Flag;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axo:Ljava/util/Map;

    array-length v1, p3

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_20

    aget-object v2, p3, v0

    iget-object v3, p0, Lcom/google/android/gms/phenotype/Configuration;->axo:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    iput-object p4, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/phenotype/Configuration;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/Configuration;->zza(Lcom/google/android/gms/phenotype/Configuration;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    instance-of v1, p1, Lcom/google/android/gms/phenotype/Configuration;

    if-eqz v1, :cond_2a

    check-cast p1, Lcom/google/android/gms/phenotype/Configuration;

    iget v1, p0, Lcom/google/android/gms/phenotype/Configuration;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Configuration;->mVersionCode:I

    if-ne v1, v2, :cond_2a

    iget v1, p0, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Configuration;->axo:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configuration;->axo:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Configuration("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/phenotype/Configuration;->mVersionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/phenotype/Flag;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_44
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    if-eqz v0, :cond_6e

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Configuration;->axn:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_5e
    if-ge v0, v3, :cond_74

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_6e
    const-string/jumbo v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/zza;->zza(Lcom/google/android/gms/phenotype/Configuration;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/phenotype/Configuration;)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    iget v1, p1, Lcom/google/android/gms/phenotype/Configuration;->axl:I

    sub-int/2addr v0, v1

    return v0
.end method
