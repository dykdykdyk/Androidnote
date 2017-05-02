.class public final Lcom/google/android/gms/internal/zzapr;
.super Lcom/google/android/gms/internal/zzaot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaot",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final bmp:Lcom/google/android/gms/internal/zzaou;


# instance fields
.field private final bll:Lcom/google/android/gms/internal/zzaob;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzapr$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapr$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapr;->bmp:Lcom/google/android/gms/internal/zzaou;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzaob;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapr;->bll:Lcom/google/android/gms/internal/zzaob;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaob;Lcom/google/android/gms/internal/zzapr$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaob;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bll:Lcom/google/android/gms/internal/zzaob;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaob;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzapr;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bv()Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqa;->bw()Lcom/google/android/gms/internal/zzaqa;

    goto :goto_5

    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/internal/zzaqa;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapr$2;->bmF:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapz;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginArray()V

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapr;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endArray()V

    :goto_2e
    return-object v0

    :pswitch_2f
    new-instance v0, Lcom/google/android/gms/internal/zzapf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapf;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->beginObject()V

    :goto_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapr;->zzb(Lcom/google/android/gms/internal/zzapy;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->endObject()V

    goto :goto_2e

    :pswitch_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :pswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    :pswitch_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :pswitch_64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapy;->nextNull()V

    const/4 v0, 0x0

    goto :goto_2e

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
        :pswitch_4d
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method
