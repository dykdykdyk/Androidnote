.class public abstract Lcom/google/android/gms/common/internal/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BB:Lcom/google/android/gms/common/internal/zzg;

.field public static final BC:Lcom/google/android/gms/common/internal/zzg;

.field public static final BD:Lcom/google/android/gms/common/internal/zzg;

.field public static final BE:Lcom/google/android/gms/common/internal/zzg;

.field public static final BF:Lcom/google/android/gms/common/internal/zzg;

.field public static final BG:Lcom/google/android/gms/common/internal/zzg;

.field public static final BH:Lcom/google/android/gms/common/internal/zzg;

.field public static final BI:Lcom/google/android/gms/common/internal/zzg;

.field public static final BJ:Lcom/google/android/gms/common/internal/zzg;

.field public static final BK:Lcom/google/android/gms/common/internal/zzg;

.field public static final BL:Lcom/google/android/gms/common/internal/zzg;

.field public static final BM:Lcom/google/android/gms/common/internal/zzg;

.field public static final BN:Lcom/google/android/gms/common/internal/zzg;

.field public static final BO:Lcom/google/android/gms/common/internal/zzg;

.field public static final BP:Lcom/google/android/gms/common/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v10, 0x600

    const/16 v9, 0x20

    const/16 v8, 0x7f

    const/16 v7, 0x2000

    const/4 v1, 0x0

    const-string/jumbo v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x200a

    invoke-static {v7, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BB:Lcom/google/android/gms/common/internal/zzg;

    const-string/jumbo v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BC:Lcom/google/android/gms/common/internal/zzg;

    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BD:Lcom/google/android/gms/common/internal/zzg;

    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const-string/jumbo v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_53
    if-ge v0, v4, :cond_65

    aget-char v5, v3, v0

    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_65
    sput-object v2, Lcom/google/android/gms/common/internal/zzg;->BE:Lcom/google/android/gms/common/internal/zzg;

    const/16 v0, 0x9

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-static {v2, v9}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x1680

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x180e

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x205f

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BF:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$1;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BG:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$5;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BH:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$6;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BI:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$7;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$7;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BJ:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$8;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$8;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BK:Lcom/google/android/gms/common/internal/zzg;

    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v8, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BL:Lcom/google/android/gms/common/internal/zzg;

    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v8, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v10, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const-string/jumbo v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v7, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const-string/jumbo v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BM:Lcom/google/android/gms/common/internal/zzg;

    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v10, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzg;->zza(CC)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BN:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$9;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$9;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BO:Lcom/google/android/gms/common/internal/zzg;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$10;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzg$10;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->BP:Lcom/google/android/gms/common/internal/zzg;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(CC)Lcom/google/android/gms/common/internal/zzg;
    .registers 3

    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzbs(Z)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzg$4;-><init>(CC)V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzg;
    .registers 4

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$3;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzg$3;-><init>([C)V

    :goto_18
    return-object v0

    :pswitch_19
    sget-object v0, Lcom/google/android/gms/common/internal/zzg;->BP:Lcom/google/android/gms/common/internal/zzg;

    goto :goto_18

    :pswitch_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzg;->zzc(C)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    goto :goto_18

    :pswitch_25
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$2;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzg$2;-><init>(CC)V

    goto :goto_18

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

.method public static zzc(C)Lcom/google/android/gms/common/internal/zzg;
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzg$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzg$11;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zzg;)Lcom/google/android/gms/common/internal/zzg;
    .registers 6

    new-instance v1, Lcom/google/android/gms/common/internal/zzg$zza;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/android/gms/common/internal/zzg;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/zzg$zza;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public zzb(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_17

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzd(C)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public abstract zzd(C)Z
.end method
