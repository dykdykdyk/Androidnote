.class public Lcom/google/android/gms/fitness/data/Field$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final Qf:Lcom/google/android/gms/fitness/data/Field;

.field public static final Qg:Lcom/google/android/gms/fitness/data/Field;

.field public static final Qh:Lcom/google/android/gms/fitness/data/Field;

.field public static final Qi:Lcom/google/android/gms/fitness/data/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "x"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzjl(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->Qf:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "y"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzjl(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->Qg:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "z"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzjl(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->Qh:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "debug_session"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->Qi:Lcom/google/android/gms/fitness/data/Field;

    return-void
.end method
