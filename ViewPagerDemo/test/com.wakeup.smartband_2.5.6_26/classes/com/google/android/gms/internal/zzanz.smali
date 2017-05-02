.class public abstract enum Lcom/google/android/gms/internal/zzanz;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzaoa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzanz;",
        ">;",
        "Lcom/google/android/gms/internal/zzaoa;"
    }
.end annotation


# static fields
.field public static final enum bkD:Lcom/google/android/gms/internal/zzanz;

.field public static final enum bkE:Lcom/google/android/gms/internal/zzanz;

.field public static final enum bkF:Lcom/google/android/gms/internal/zzanz;

.field public static final enum bkG:Lcom/google/android/gms/internal/zzanz;

.field public static final enum bkH:Lcom/google/android/gms/internal/zzanz;

.field private static final synthetic bkI:[Lcom/google/android/gms/internal/zzanz;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzanz$1;

    const-string/jumbo v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzanz$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkD:Lcom/google/android/gms/internal/zzanz;

    new-instance v0, Lcom/google/android/gms/internal/zzanz$2;

    const-string/jumbo v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzanz$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkE:Lcom/google/android/gms/internal/zzanz;

    new-instance v0, Lcom/google/android/gms/internal/zzanz$3;

    const-string/jumbo v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzanz$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkF:Lcom/google/android/gms/internal/zzanz;

    new-instance v0, Lcom/google/android/gms/internal/zzanz$4;

    const-string/jumbo v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzanz$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkG:Lcom/google/android/gms/internal/zzanz;

    new-instance v0, Lcom/google/android/gms/internal/zzanz$5;

    const-string/jumbo v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzanz$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkH:Lcom/google/android/gms/internal/zzanz;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzanz;

    sget-object v1, Lcom/google/android/gms/internal/zzanz;->bkD:Lcom/google/android/gms/internal/zzanz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzanz;->bkE:Lcom/google/android/gms/internal/zzanz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzanz;->bkF:Lcom/google/android/gms/internal/zzanz;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzanz;->bkG:Lcom/google/android/gms/internal/zzanz;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzanz;->bkH:Lcom/google/android/gms/internal/zzanz;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzanz;->bkI:[Lcom/google/android/gms/internal/zzanz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzanz$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzanz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzanz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzanz;->bkI:[Lcom/google/android/gms/internal/zzanz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzanz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzanz;

    return-object v0
.end method

.method private static zza(CLjava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2a

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method private static zzbz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzca(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzanz;->zzbz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzum(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_18

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_22
    :goto_22
    return-object p0

    :cond_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_a

    :cond_2d
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/zzanz;->zza(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22
.end method

.method static synthetic zzun(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzanz;->zzum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
