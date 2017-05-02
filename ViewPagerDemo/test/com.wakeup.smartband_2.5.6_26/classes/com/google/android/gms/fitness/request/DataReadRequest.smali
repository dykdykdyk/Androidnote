.class public Lcom/google/android/gms/fitness/request/DataReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataReadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIMIT:I


# instance fields
.field private final GT:I

.field private final GX:J

.field private final OX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final Pa:I

.field private final SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final SX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final SY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final SZ:J

.field private final Ta:Lcom/google/android/gms/fitness/data/DataSource;

.field private final Tb:Z

.field private final Tc:Z

.field private final Td:Lcom/google/android/gms/internal/zztp;

.field private final Te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final Tf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bZ:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLandroid/os/IBinder;Ljava/util/List;Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;IJ",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "IZZ",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    iput p10, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    iput-wide p11, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    iput-object p13, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GT:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tb:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    if-nez p17, :cond_3d

    const/4 v1, 0x0

    :goto_26
    iput-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Td:Lcom/google/android/gms/internal/zztp;

    if-nez p18, :cond_2e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p18

    :cond_2e
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Te:Ljava/util/List;

    if-nez p19, :cond_38

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p19

    :cond_38
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    return-void

    :cond_3d
    invoke-static/range {p17 .. p17}, Lcom/google/android/gms/internal/zztp$zza;->zzfq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zztp;

    move-result-object v1

    goto :goto_26
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V
    .registers 22

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zze(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzg(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzh(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzi(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzl(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzm(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzn(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zztp;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;Lcom/google/android/gms/fitness/request/DataReadRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zztp;)V
    .registers 25

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GT:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tb:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Te:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v3, p0

    move-object/from16 v19, p2

    invoke-direct/range {v3 .. v21}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zztp;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zztp;Ljava/util/List;Ljava/util/List;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;IJ",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "IZZ",
            "Lcom/google/android/gms/internal/zztp;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x6

    if-nez p16, :cond_27

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(ILjava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLandroid/os/IBinder;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_27
    invoke-interface/range {p16 .. p16}, Lcom/google/android/gms/internal/zztp;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    goto :goto_5
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_82

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_82

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    if-ne v0, v1, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    if-ne v0, v1, :cond_82

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GT:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->GT:I

    if-ne v0, v1, :cond_82

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tb:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tb:Z

    if-ne v0, v1, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Td:Lcom/google/android/gms/internal/zztp;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Td:Lcom/google/android/gms/internal/zztp;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Te:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Te:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    :goto_81
    return v0

    :cond_82
    const/4 v0, 0x0

    goto :goto_81
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z

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

.method public getActivityDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getAggregatedDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    return-object v0
.end method

.method public getAggregatedDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    return-object v0
.end method

.method public getBucketDuration(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    return v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Td:Lcom/google/android/gms/internal/zztp;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Td:Lcom/google/android/gms/internal/zztp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zztp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimit()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GT:I

    return v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "DataReadRequest{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->OX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzbeq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_5d
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    if-eqz v0, :cond_92

    const-string/jumbo v0, "bucket by "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Pa:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->zznr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8c

    const-string/jumbo v0, " >"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    const-string/jumbo v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzbeq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c9

    :cond_e4
    const-string/jumbo v0, "(%tF %tT - %tF %tT)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_129

    const-string/jumbo v0, "activities: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Ta:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_129
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15c

    const-string/jumbo v0, "quality: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSource;->zzny(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13d

    :cond_15c
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    if-eqz v0, :cond_166

    const-string/jumbo v0, " +server"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_166
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzf;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzafn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->bZ:J

    return-wide v0
.end method

.method public zzbao()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->GX:J

    return-wide v0
.end method

.method public zzbge()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tc:Z

    return v0
.end method

.method public zzbgf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tb:Z

    return v0
.end method

.method public zzbgg()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->SZ:J

    return-wide v0
.end method

.method public zzbgh()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Te:Ljava/util/List;

    return-object v0
.end method

.method public zzbgi()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->Tf:Ljava/util/List;

    return-object v0
.end method
