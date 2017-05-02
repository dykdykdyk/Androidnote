.class Lcom/google/android/gms/maps/GoogleMap$13;
.super Lcom/google/android/gms/maps/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnCircleClickListener(Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic akZ:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$13;->akL:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$13;->akZ:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/internal/zzb;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$13;->akZ:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Circle;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Circle;-><init>(Lcom/google/android/gms/maps/model/internal/zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;->onCircleClick(Lcom/google/android/gms/maps/model/Circle;)V

    return-void
.end method
