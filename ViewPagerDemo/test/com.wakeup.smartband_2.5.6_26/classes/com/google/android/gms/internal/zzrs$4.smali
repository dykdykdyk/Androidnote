.class final Lcom/google/android/gms/internal/zzrs$4;
.super Lcom/google/android/gms/internal/zzrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrs",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzrs;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzhg(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrs$4;->zzhk(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected zzhk(Ljava/lang/String;)Ljava/lang/Float;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzrs;->zzasy()Lcom/google/android/gms/internal/zzrs$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrs$4;->zzbaf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$4;->zzbag:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzrs$zza;->zzb(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
