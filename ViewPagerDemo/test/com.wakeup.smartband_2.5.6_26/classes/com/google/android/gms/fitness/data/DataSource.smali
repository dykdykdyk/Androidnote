.class public Lcom/google/android/gms/fitness/data/DataSource;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/DataSource$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_DATA_SOURCE:Ljava/lang/String; = "vnd.google.fitness.data_source"

.field private static final Pp:[I

.field public static final TYPE_DERIVED:I = 0x1

.field public static final TYPE_RAW:I


# instance fields
.field private final Pl:Lcom/google/android/gms/fitness/data/DataType;

.field private final Pq:Lcom/google/android/gms/fitness/data/Device;

.field private final Pr:Lcom/google/android/gms/fitness/data/Application;

.field private final Ps:Ljava/lang/String;

.field private final Pt:[I

.field private final Pu:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:I

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSource;->Pp:[I

    new-instance v0, Lcom/google/android/gms/fitness/data/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;[I)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    iput p4, p0, Lcom/google/android/gms/fitness/data/DataSource;->type:I

    iput-object p3, p0, Lcom/google/android/gms/fitness/data/DataSource;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->zzbep()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    if-eqz p8, :cond_1c

    :goto_19
    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pt:[I

    return-void

    :cond_1c
    sget-object p8, Lcom/google/android/gms/fitness/data/DataSource;->Pp:[I

    goto :goto_19
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zza(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzb(Lcom/google/android/gms/fitness/data/DataSource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->type:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzc(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzd(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zze(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzf(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->zzbep()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzg(Lcom/google/android/gms/fitness/data/DataSource$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pt:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;Lcom/google/android/gms/fitness/data/DataSource$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;)V

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/fitness/data/DataSource;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "vnd.google.fitness.data_source"

    sget-object v1, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    goto :goto_3
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->type:I

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    const-string/jumbo v0, "raw"

    :goto_11
    return-object v0

    :pswitch_12
    const-string/jumbo v0, "derived"

    goto :goto_11

    :pswitch_16
    const-string/jumbo v0, "cleaned"

    goto :goto_11

    :pswitch_1a
    const-string/jumbo v0, "converted"

    goto :goto_11

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method

.method private zza(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private zzbep()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_30

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_44

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->getStreamIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zznx(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid type value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    const-string/jumbo v0, "r"

    :goto_22
    return-object v0

    :pswitch_23
    const-string/jumbo v0, "d"

    goto :goto_22

    :pswitch_27
    const-string/jumbo v0, "c"

    goto :goto_22

    :pswitch_2b
    const-string/jumbo v0, "v"

    goto :goto_22

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method public static zzny(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid data quality standard value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    const-string/jumbo v0, "blood_pressure_esh2002"

    :goto_22
    return-object v0

    :pswitch_23
    const-string/jumbo v0, "blood_pressure_esh2010"

    goto :goto_22

    :pswitch_27
    const-string/jumbo v0, "blood_pressure_aami"

    goto :goto_22

    :pswitch_2b
    const-string/jumbo v0, "blood_pressure_bhs_a_a"

    goto :goto_22

    :pswitch_2f
    const-string/jumbo v0, "blood_pressure_bhs_a_b"

    goto :goto_22

    :pswitch_33
    const-string/jumbo v0, "blood_pressure_bhs_b_a"

    goto :goto_22

    :pswitch_37
    const-string/jumbo v0, "blood_pressure_bhs_b_b"

    goto :goto_22

    :pswitch_3b
    const-string/jumbo v0, "blood_glucose_iso151972003"

    goto :goto_22

    :pswitch_3f
    const-string/jumbo v0, "blood_glucose_iso151972013"

    goto :goto_22

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource;->zza(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getDevice()Lcom/google/android/gms/fitness/data/Device;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->type:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->type:I

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSource;->zznx(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzbeq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_cf

    const-string/jumbo v0, ""

    :goto_1b
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_fe

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_65
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    if-eqz v2, :cond_10a

    const-string/jumbo v5, ":"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_103

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_cf
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->OT:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Application;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string/jumbo v0, ":gms"

    goto/16 :goto_1b

    :cond_de
    const-string/jumbo v1, ":"

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_f7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_fe
    const-string/jumbo v1, ""

    goto/16 :goto_65

    :cond_103
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7c

    :cond_10a
    const-string/jumbo v2, ""

    goto/16 :goto_7c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DataSource{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->name:Ljava/lang/String;

    if-eqz v1, :cond_1f

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_2f

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_3f

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pq:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    if-eqz v1, :cond_4f

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Ps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pl:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzi;->zza(Lcom/google/android/gms/fitness/data/DataSource;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzben()Lcom/google/android/gms/fitness/data/Application;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pr:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method public zzbeo()[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->Pt:[I

    return-object v0
.end method
