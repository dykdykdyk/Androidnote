.class final Lcom/google/android/gms/common/internal/zzg$1;
.super Lcom/google/android/gms/common/internal/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method
