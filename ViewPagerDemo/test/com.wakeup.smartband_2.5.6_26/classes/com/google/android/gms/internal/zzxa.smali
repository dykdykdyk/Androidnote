.class public final Lcom/google/android/gms/internal/zzxa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzxa$zza;
    }
.end annotation


# static fields
.field public static final aAa:Lcom/google/android/gms/internal/zzxa;


# instance fields
.field private final aAb:Z

.field private final aAc:Z

.field private final aAd:Ljava/lang/Long;

.field private final aAe:Ljava/lang/Long;

.field private final hh:Z

.field private final hj:Z

.field private final hk:Ljava/lang/String;

.field private final hl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzxa$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzxa$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxa$zza;->zzcdf()Lcom/google/android/gms/internal/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzxa;->aAa:Lcom/google/android/gms/internal/zzxa;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzxa;->aAb:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzxa;->hh:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxa;->hk:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzxa;->hj:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzxa;->aAc:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzxa;->hl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzxa;->aAd:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzxa;->aAe:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/zzxa$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzxa;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public zzahk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->hh:Z

    return v0
.end method

.method public zzahm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->hj:Z

    return v0
.end method

.method public zzahn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->hk:Ljava/lang/String;

    return-object v0
.end method

.method public zzaho()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public zzcdb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->aAb:Z

    return v0
.end method

.method public zzcdc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxa;->aAc:Z

    return v0
.end method

.method public zzcdd()Ljava/lang/Long;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->aAd:Ljava/lang/Long;

    return-object v0
.end method

.method public zzcde()Ljava/lang/Long;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->aAe:Ljava/lang/Long;

    return-object v0
.end method
