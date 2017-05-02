.class public Lcom/google/android/gms/internal/zzaqa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final bov:[Ljava/lang/String;

.field private static final bow:[Ljava/lang/String;


# instance fields
.field private bkN:Z

.field private bkO:Z

.field private bnY:Z

.field private bog:[I

.field private boh:I

.field private box:Ljava/lang/String;

.field private boy:Ljava/lang/String;

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    move v0, v1

    :goto_8
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const-string/jumbo v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_23
    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string/jumbo v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string/jumbo v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string/jumbo v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string/jumbo v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string/jumbo v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string/jumbo v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string/jumbo v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzagw(I)V

    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bkN:Z

    if-nez p1, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    return-void
.end method

.method private bL()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private bM()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzuw(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private bN()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->box:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    :goto_10
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqa;->box:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private bO()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bL()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bN()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzagy(I)V

    return-void

    :cond_16
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zzagw(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    array-length v1, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    aput p1, v0, v1

    return-void
.end method

.method private zzagy(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bL()I

    move-result v0

    if-eq v0, p2, :cond_11

    if-eq v0, p1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Dangling name: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :cond_34
    iget v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    if-ne v0, p2, :cond_3f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bN()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zzdj(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bL()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bnY:Z

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :pswitch_1d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bnY:Z

    if-nez v0, :cond_2c

    if-nez p1, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzagy(I)V

    :goto_30
    return-void

    :pswitch_31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzagy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bN()V

    goto :goto_30

    :pswitch_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bN()V

    goto :goto_30

    :pswitch_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzagy(I)V

    goto :goto_30

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_31
        :pswitch_39
        :pswitch_7
        :pswitch_44
        :pswitch_7
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method

.method private zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;->zzagw(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zzuw(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bkO:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bow:[Ljava/lang/String;

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    :goto_14
    if-ge v3, v4, :cond_49

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_29

    aget-object v2, v0, v2

    if-nez v2, :cond_30

    :cond_22
    :goto_22
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_14

    :cond_26
    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bov:[Ljava/lang/String;

    goto :goto_7

    :cond_29
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_41

    const-string/jumbo v2, "\\u2028"

    :cond_30
    :goto_30
    if-ge v1, v3, :cond_39

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_22

    :cond_41
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_22

    const-string/jumbo v2, "\\u2029"

    goto :goto_30

    :cond_49
    if-ge v1, v4, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bJ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bkO:Z

    return v0
.end method

.method public final bK()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bkN:Z

    return v0
.end method

.method public bt()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    const/4 v0, 0x1

    const-string/jumbo v1, "["

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    return-object v0
.end method

.method public bu()Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaqa;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    return-object v0
.end method

.method public bv()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    const/4 v0, 0x3

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzq(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    return-object v0
.end method

.method public bw()Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaqa;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqa;

    move-result-object v0

    return-object v0
.end method

.method public bx()Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bkN:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_17
    return-object p0

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    goto :goto_17
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    if-gt v0, v1, :cond_15

    if-ne v0, v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->bog:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1e

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqa;->bnY:Z

    return v0
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->box:Ljava/lang/String;

    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->separator:Ljava/lang/String;

    :goto_e
    return-void

    :cond_f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqa;->box:Ljava/lang/String;

    const-string/jumbo v0, ": "

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->separator:Ljava/lang/String;

    goto :goto_e
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqa;->bnY:Z

    return-void
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqa;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaqa;->bnY:Z

    if-nez v1, :cond_55

    const-string/jumbo v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public zzcu(J)Lcom/google/android/gms/internal/zzaqa;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzdf(Z)Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqa;->out:Ljava/io/Writer;

    if-eqz p1, :cond_12

    const-string/jumbo v0, "true"

    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_12
    const-string/jumbo v0, "false"

    goto :goto_e
.end method

.method public final zzdh(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqa;->bkO:Z

    return-void
.end method

.method public final zzdi(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqa;->bkN:Z

    return-void
.end method

.method public zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/zzaqa;->boh:I

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqa;->boy:Ljava/lang/String;

    return-object p0
.end method

.method public zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->bx()Lcom/google/android/gms/internal/zzaqa;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;->bM()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqa;->zzdj(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;->zzuw(Ljava/lang/String;)V

    goto :goto_6
.end method
