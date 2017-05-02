.class public Lcom/google/android/gms/fitness/request/DataSourceQueryParams;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourceQueryParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final GT:I

.field public final ON:Lcom/google/android/gms/fitness/data/DataSource;

.field public final Rv:J

.field public final Tg:J

.field public final Th:I

.field public final fr:J

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJJII)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->fr:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Rv:J

    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Tg:J

    iput p9, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->GT:I

    iput p10, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Th:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    const-wide/32 v6, 0xf4240

    const-string/jumbo v0, "{%1$s, %2$tF %2$tT - %3$tF %3$tT (%4$s %5$s)}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->ON:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Rv:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Tg:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->GT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/fitness/request/DataSourceQueryParams;->Th:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzg;->zza(Lcom/google/android/gms/fitness/request/DataSourceQueryParams;Landroid/os/Parcel;I)V

    return-void
.end method
