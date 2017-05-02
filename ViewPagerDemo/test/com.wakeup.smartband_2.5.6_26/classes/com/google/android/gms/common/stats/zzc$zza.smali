.class public final Lcom/google/android/gms/common/stats/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static Eh:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Ei:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Ej:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Ek:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static El:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Em:Lcom/google/android/gms/internal/zzrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrs",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Eh:Lcom/google/android/gms/internal/zzrs;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ei:Lcom/google/android/gms/internal/zzrs;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_services"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ej:Lcom/google/android/gms/internal/zzrs;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ek:Lcom/google/android/gms/internal/zzrs;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_services"

    const-string/jumbo v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->El:Lcom/google/android/gms/internal/zzrs;

    const-string/jumbo v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Em:Lcom/google/android/gms/internal/zzrs;

    return-void
.end method
