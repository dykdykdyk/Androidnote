.class public abstract Lcom/google/android/gms/internal/zzuw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzuw$zzd;,
        Lcom/google/android/gms/internal/zzuw$zzc;,
        Lcom/google/android/gms/internal/zzuw$zzb;,
        Lcom/google/android/gms/internal/zzuw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzbae:I

.field private final zzbaf:Ljava/lang/String;

.field private final zzbag:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzuw;->zzbae:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuw;->zzbaf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuw;->zzbag:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzva;->zzbhm()Lcom/google/android/gms/internal/zzux;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzux;->zza(Lcom/google/android/gms/internal/zzuw;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzuw$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzuw;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzuw$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzuw$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzuw$zza;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzuw$zzb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzuw$zzb;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzuw$zzb;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzuw$zzc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzuw$zzc;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzuw$zzc;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzc(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzuw$zzd;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzuw$zzd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzuw$zzd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzva;->zzbhn()Lcom/google/android/gms/internal/zzuy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzuy;->zzb(Lcom/google/android/gms/internal/zzuw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuw;->zzbaf:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzuw;->zzbae:I

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzuz;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzuz;",
            ")TT;"
        }
    .end annotation
.end method

.method public zzkq()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuw;->zzbag:Ljava/lang/Object;

    return-object v0
.end method
