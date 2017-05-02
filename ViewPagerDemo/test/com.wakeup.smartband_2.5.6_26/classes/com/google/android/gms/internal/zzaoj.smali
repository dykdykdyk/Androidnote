.class public final Lcom/google/android/gms/internal/zzaoj;
.super Lcom/google/android/gms/internal/zzaoh;


# static fields
.field public static final bld:Lcom/google/android/gms/internal/zzaoj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaoj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaoj;->bld:Lcom/google/android/gms/internal/zzaoj;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaoj;

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/zzaoj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
