.class Lcom/google/android/gms/maps/GoogleMap$5;
.super Lcom/google/android/gms/maps/internal/zzo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic akP:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->akL:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$5;->akP:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzo$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$5;->akP:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;->onInfoWindowLongClick(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
