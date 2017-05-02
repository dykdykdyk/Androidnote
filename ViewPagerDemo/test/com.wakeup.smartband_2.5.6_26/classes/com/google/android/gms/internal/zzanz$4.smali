.class final enum Lcom/google/android/gms/internal/zzanz$4;
.super Lcom/google/android/gms/internal/zzanz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzanz;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzanz$1;)V

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzanz;->zzca(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
