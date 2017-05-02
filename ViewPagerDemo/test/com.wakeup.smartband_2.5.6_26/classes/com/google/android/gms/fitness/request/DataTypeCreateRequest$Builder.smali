.class public Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Tn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->Tn:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->Tn:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addField(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->Tn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->Tn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public addField(Ljava/lang/String;I)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .registers 5

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    const-string/jumbo v1, "Invalid name specified"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/data/Field;->zzn(Ljava/lang/String;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->addField(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_22

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Must set the name"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->Tn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    :goto_15
    const-string/jumbo v0, "Must specify the data fields"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;-><init>(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$1;)V

    return-object v0

    :cond_22
    move v0, v2

    goto :goto_7

    :cond_24
    move v1, v2

    goto :goto_15
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method
