.class public Lcom/google/android/gms/phenotype/Flag;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/phenotype/Flag$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/phenotype/Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/phenotype/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final axt:Lcom/google/android/gms/phenotype/Flag$zza;


# instance fields
.field final Dr:Ljava/lang/String;

.field final afA:D

.field final afy:Z

.field final axp:J

.field final axq:[B

.field public final axr:I

.field public final axs:I

.field final mVersionCode:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/phenotype/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/Flag$zza;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/Flag$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->axt:Lcom/google/android/gms/phenotype/Flag$zza;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZDLjava/lang/String;[BII)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/phenotype/Flag;->axp:J

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    iput-wide p6, p0, Lcom/google/android/gms/phenotype/Flag;->afA:D

    iput-object p8, p0, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    iput p10, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    iput p11, p0, Lcom/google/android/gms/phenotype/Flag;->axs:I

    return-void
.end method

.method private static compare(BB)I
    .registers 3

    sub-int v0, p0, p1

    return v0
.end method

.method private static compare(II)I
    .registers 3

    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static compare(JJ)I
    .registers 6

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method private static compare(ZZ)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/Flag;->zza(Lcom/google/android/gms/phenotype/Flag;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_79

    instance-of v2, p1, Lcom/google/android/gms/phenotype/Flag;

    if-eqz v2, :cond_79

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->axr:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->axs:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->axs:I

    if-eq v2, v3, :cond_28

    :cond_26
    move v0, v1

    :cond_27
    :goto_27
    return v0

    :cond_28
    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    packed-switch v2, :pswitch_data_7c

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_4b
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->axp:J

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->axp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_55
    iget-boolean v2, p0, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    iget-boolean v3, p1, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_5d
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->afA:D

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->afA:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_27

    :pswitch_67
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_27

    :pswitch_70
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_27

    :cond_79
    move v0, v1

    goto :goto_27

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_55
        :pswitch_5d
        :pswitch_67
        :pswitch_70
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Flag("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    packed-switch v1, :pswitch_data_aa

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_41
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->axp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_46
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_67
    iget-boolean v1, p0, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_46

    :pswitch_6d
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->afA:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_46

    :pswitch_73
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :pswitch_85
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    if-nez v1, :cond_90

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_90
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    sget-object v3, Lcom/google/android/gms/phenotype/Flag;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_41
        :pswitch_67
        :pswitch_6d
        :pswitch_73
        :pswitch_85
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/zzb;->zza(Lcom/google/android/gms/phenotype/Flag;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/phenotype/Flag;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    move v0, v1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Flag;->axr:I

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result v1

    if-eqz v1, :cond_19

    move v0, v1

    goto :goto_c

    :cond_19
    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    packed-switch v1, :pswitch_data_9e

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->axr:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_3c
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->axp:J

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->axp:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/phenotype/Flag;->compare(JJ)I

    move-result v0

    goto :goto_c

    :pswitch_45
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    iget-boolean v1, p1, Lcom/google/android/gms/phenotype/Flag;->afy:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(ZZ)I

    move-result v0

    goto :goto_c

    :pswitch_4e
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->afA:D

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->afA:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_c

    :pswitch_57
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->Dr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :pswitch_60
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    if-nez v1, :cond_6c

    const/4 v0, -0x1

    goto :goto_c

    :cond_6c
    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    if-nez v1, :cond_74

    const/4 v0, 0x1

    goto :goto_c

    :cond_72
    add-int/lit8 v0, v0, 0x1

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    array-length v1, v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_91

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    aget-byte v2, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->compare(BB)I

    move-result v1

    if-eqz v1, :cond_72

    move v0, v1

    goto/16 :goto_c

    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->axq:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result v0

    goto/16 :goto_c

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
    .end packed-switch
.end method
