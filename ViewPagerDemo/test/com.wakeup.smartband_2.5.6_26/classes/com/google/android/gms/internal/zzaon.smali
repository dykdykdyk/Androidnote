.class public final Lcom/google/android/gms/internal/zzaon;
.super Lcom/google/android/gms/internal/zzaoh;


# static fields
.field private static final blf:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzaon;->blf:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaon;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaon;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaon;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaoh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaon;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzaon;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_1f

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method private static zzcn(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzaon;->blf:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v1

    :goto_f
    if-ge v2, v5, :cond_1c

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    move v0, v1

    goto :goto_6
.end method


# virtual methods
.method public aQ()Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/android/gms/internal/zzape;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzape;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_10
.end method

.method public aR()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aZ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method aZ()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public ba()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public bb()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public bc()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/zzaon;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    invoke-static {p0}, Lcom/google/android/gms/internal/zzaon;->zza(Lcom/google/android/gms/internal/zzaon;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaon;->zza(Lcom/google/android/gms/internal/zzaon;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_6d

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6d
    move v1, v0

    :cond_6e
    move v0, v1

    goto :goto_4

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getAsBoolean()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aZ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public getAsDouble()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_e
.end method

.method public getAsInt()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getAsLong()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 5

    const/16 v2, 0x20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    if-nez v0, :cond_9

    const/16 v0, 0x1f

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/zzaon;->zza(Lcom/google/android/gms/internal/zzaon;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaon;->aQ()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    :goto_10
    return-void

    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaon;->zzcn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoz;->zzbs(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaon;->value:Ljava/lang/Object;

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    goto :goto_1c
.end method
