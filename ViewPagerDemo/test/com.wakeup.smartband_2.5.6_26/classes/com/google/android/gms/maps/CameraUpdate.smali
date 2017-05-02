.class public final Lcom/google/android/gms/maps/CameraUpdate;
.super Ljava/lang/Object;


# instance fields
.field private final akG:Lcom/google/android/gms/dynamic/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/zzd;

    iput-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->akG:Lcom/google/android/gms/dynamic/zzd;

    return-void
.end method


# virtual methods
.method public zzbrh()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->akG:Lcom/google/android/gms/dynamic/zzd;

    return-object v0
.end method
