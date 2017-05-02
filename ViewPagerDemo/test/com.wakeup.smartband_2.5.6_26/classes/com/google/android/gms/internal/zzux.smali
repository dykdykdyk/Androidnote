.class public Lcom/google/android/gms/internal/zzux;
.super Ljava/lang/Object;


# instance fields
.field private final zzbah:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzuw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbai:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzuw$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaj:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzuw$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzux;->zzbah:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzux;->zzbai:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzux;->zzbaj:Ljava/util/Collection;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzva;->zzbhn()Lcom/google/android/gms/internal/zzuy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzuy;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzuw;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzux;->zzbah:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
