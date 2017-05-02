.class public abstract enum Lcom/google/android/gms/internal/zzaor;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzaor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum blg:Lcom/google/android/gms/internal/zzaor;

.field public static final enum blh:Lcom/google/android/gms/internal/zzaor;

.field private static final synthetic bli:[Lcom/google/android/gms/internal/zzaor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzaor$1;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaor$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzaor;->blg:Lcom/google/android/gms/internal/zzaor;

    new-instance v0, Lcom/google/android/gms/internal/zzaor$2;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzaor$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzaor;->blh:Lcom/google/android/gms/internal/zzaor;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaor;

    sget-object v1, Lcom/google/android/gms/internal/zzaor;->blg:Lcom/google/android/gms/internal/zzaor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzaor;->blh:Lcom/google/android/gms/internal/zzaor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzaor;->bli:[Lcom/google/android/gms/internal/zzaor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzaor$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzaor;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzaor;->bli:[Lcom/google/android/gms/internal/zzaor;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzaor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaor;

    return-object v0
.end method
