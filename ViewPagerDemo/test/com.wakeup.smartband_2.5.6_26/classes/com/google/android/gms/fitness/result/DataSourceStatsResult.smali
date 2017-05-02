.class public Lcom/google/android/gms/fitness/result/DataSourceStatsResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourceStatsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ON:Lcom/google/android/gms/fitness/data/DataSource;

.field public final Ui:Z

.field public final Uj:J

.field public final Uk:J

.field public final fr:J

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JZJJ)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->fr:J

    iput-boolean p5, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Ui:Z

    iput-wide p6, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Uj:J

    iput-wide p8, p0, Lcom/google/android/gms/fitness/result/DataSourceStatsResult;->Uk:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzd;->zza(Lcom/google/android/gms/fitness/result/DataSourceStatsResult;Landroid/os/Parcel;I)V

    return-void
.end method
