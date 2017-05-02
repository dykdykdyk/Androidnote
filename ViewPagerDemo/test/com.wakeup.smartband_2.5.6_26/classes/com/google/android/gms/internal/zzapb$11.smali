.class Lcom/google/android/gms/internal/zzapb$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapb;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzapg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blA:Lcom/google/android/gms/internal/zzapb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb$11;->blA:Lcom/google/android/gms/internal/zzapb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bg()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
