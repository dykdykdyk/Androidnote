.class public Lcom/google/android/gms/fitness/data/zzk;
.super Ljava/lang/Object;


# static fields
.field public static final PG:[Lcom/google/android/gms/fitness/data/DataType;

.field public static final PH:[Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3b

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->Px:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qy:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QI:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qv:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QF:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qu:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->PA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->PC:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qx:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QH:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->Pz:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->PD:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qz:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->Pw:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->PB:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QB:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QC:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qw:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QG:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->Py:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->Pv:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QD:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/zzk;->PG:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/zzr;->Qy:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/fitness/data/zzr;->QI:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/zzr;->Qv:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/zzr;->QF:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/zzr;->Qu:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qx:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QH:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qz:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QB:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QC:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->Qw:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QG:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/zzr;->QD:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/zzk;->PH:[Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method public static zzjh(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3f6

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_4e8

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :sswitch_d
    const-string/jumbo v1, "com.google.accelerometer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string/jumbo v1, "com.google.activity.exercise"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_23
    const-string/jumbo v1, "com.google.activity.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2e
    const-string/jumbo v1, "com.google.activity.samples"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_39
    const-string/jumbo v1, "com.google.activity.segment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_44
    const-string/jumbo v1, "com.google.activity.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_4f
    const-string/jumbo v1, "com.google.body.temperature.basal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_5a
    const-string/jumbo v1, "com.google.body.temperature.basal.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_65
    const-string/jumbo v1, "com.google.body.fat.percentage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_71
    const-string/jumbo v1, "com.google.blood_glucose"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_8

    :sswitch_7d
    const-string/jumbo v1, "com.google.blood_glucose.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xa

    goto :goto_8

    :sswitch_89
    const-string/jumbo v1, "com.google.blood_pressure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_8

    :sswitch_96
    const-string/jumbo v1, "com.google.blood_pressure.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_8

    :sswitch_a3
    const-string/jumbo v1, "com.google.body.fat.percentage.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_8

    :sswitch_b0
    const-string/jumbo v1, "com.google.body.hip.circumference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_8

    :sswitch_bd
    const-string/jumbo v1, "com.google.body.hip.circumference.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_8

    :sswitch_ca
    const-string/jumbo v1, "com.google.body.temperature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_8

    :sswitch_d7
    const-string/jumbo v1, "com.google.body.temperature.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_8

    :sswitch_e4
    const-string/jumbo v1, "com.google.body.waist.circumference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_8

    :sswitch_f1
    const-string/jumbo v1, "com.google.body.waist.circumference.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_8

    :sswitch_fe
    const-string/jumbo v1, "com.google.calories.bmr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_8

    :sswitch_10b
    const-string/jumbo v1, "com.google.calories.bmr.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_8

    :sswitch_118
    const-string/jumbo v1, "com.google.calories.consumed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_8

    :sswitch_125
    const-string/jumbo v1, "com.google.calories.expended"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_8

    :sswitch_132
    const-string/jumbo v1, "com.google.cervical_mucus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_8

    :sswitch_13f
    const-string/jumbo v1, "com.google.cervical_position"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x19

    goto/16 :goto_8

    :sswitch_14c
    const-string/jumbo v1, "com.google.cycling.pedaling.cadence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1a

    goto/16 :goto_8

    :sswitch_159
    const-string/jumbo v1, "com.google.cycling.pedaling.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1b

    goto/16 :goto_8

    :sswitch_166
    const-string/jumbo v1, "com.google.cycling.wheel_revolution.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1c

    goto/16 :goto_8

    :sswitch_173
    const-string/jumbo v1, "com.google.cycling.wheel_revolution.rpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1d

    goto/16 :goto_8

    :sswitch_180
    const-string/jumbo v1, "com.google.distance.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1e

    goto/16 :goto_8

    :sswitch_18d
    const-string/jumbo v1, "com.google.distance.delta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1f

    goto/16 :goto_8

    :sswitch_19a
    const-string/jumbo v1, "com.google.floor_change"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x20

    goto/16 :goto_8

    :sswitch_1a7
    const-string/jumbo v1, "com.google.floor_change.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x21

    goto/16 :goto_8

    :sswitch_1b4
    const-string/jumbo v1, "com.google.heart_rate.bpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x22

    goto/16 :goto_8

    :sswitch_1c1
    const-string/jumbo v1, "com.google.heart_rate.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x23

    goto/16 :goto_8

    :sswitch_1ce
    const-string/jumbo v1, "com.google.height"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x24

    goto/16 :goto_8

    :sswitch_1db
    const-string/jumbo v1, "com.google.location.bounding_box"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x25

    goto/16 :goto_8

    :sswitch_1e8
    const-string/jumbo v1, "com.google.location.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x26

    goto/16 :goto_8

    :sswitch_1f5
    const-string/jumbo v1, "com.google.location.track"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x27

    goto/16 :goto_8

    :sswitch_202
    const-string/jumbo v1, "com.google.menstruation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x28

    goto/16 :goto_8

    :sswitch_20f
    const-string/jumbo v1, "com.google.nutrition"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x29

    goto/16 :goto_8

    :sswitch_21c
    const-string/jumbo v1, "com.google.hydration"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2a

    goto/16 :goto_8

    :sswitch_229
    const-string/jumbo v1, "com.google.nutrition.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2b

    goto/16 :goto_8

    :sswitch_236
    const-string/jumbo v1, "com.google.ovulation_test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2c

    goto/16 :goto_8

    :sswitch_243
    const-string/jumbo v1, "com.google.oxygen_saturation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2d

    goto/16 :goto_8

    :sswitch_250
    const-string/jumbo v1, "com.google.oxygen_saturation.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2e

    goto/16 :goto_8

    :sswitch_25d
    const-string/jumbo v1, "com.google.power.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2f

    goto/16 :goto_8

    :sswitch_26a
    const-string/jumbo v1, "com.google.power.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x30

    goto/16 :goto_8

    :sswitch_277
    const-string/jumbo v1, "com.google.sensor.events"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x31

    goto/16 :goto_8

    :sswitch_284
    const-string/jumbo v1, "com.google.speed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x32

    goto/16 :goto_8

    :sswitch_291
    const-string/jumbo v1, "com.google.internal.session.debug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x33

    goto/16 :goto_8

    :sswitch_29e
    const-string/jumbo v1, "com.google.speed.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x34

    goto/16 :goto_8

    :sswitch_2ab
    const-string/jumbo v1, "com.google.step_count.cadence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x35

    goto/16 :goto_8

    :sswitch_2b8
    const-string/jumbo v1, "com.google.step_count.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x36

    goto/16 :goto_8

    :sswitch_2c5
    const-string/jumbo v1, "com.google.step_count.delta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x37

    goto/16 :goto_8

    :sswitch_2d2
    const-string/jumbo v1, "com.google.stride_model"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x38

    goto/16 :goto_8

    :sswitch_2df
    const-string/jumbo v1, "com.google.vaginal_spotting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x39

    goto/16 :goto_8

    :sswitch_2ec
    const-string/jumbo v1, "com.google.weight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x3a

    goto/16 :goto_8

    :sswitch_2f9
    const-string/jumbo v1, "com.google.weight.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x3b

    goto/16 :goto_8

    :pswitch_306
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->Px:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_30a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_30e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_312
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_316
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_31a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_31e
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qy:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_322
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QI:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_326
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_32a
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qv:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_32e
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QF:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_332
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qu:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_336
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_33a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_33e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->PA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_342
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->PC:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_346
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qx:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_34a
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QH:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_34e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->Pz:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_352
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->PD:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_356
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_35a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_35e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_362
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_366
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qz:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_36a
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_36e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_372
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_376
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_37a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_37e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_382
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_386
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->Pw:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_38a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->PB:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_38e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_392
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_396
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_39a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_39e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3a2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3a6
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QB:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3aa
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ae
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3b2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3b6
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QC:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ba
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->Qw:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3be
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QG:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3c2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3c6
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ca
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->Py:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ce
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3d2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->PF:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3d6
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3da
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3de
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3e2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3e6
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->Pv:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ea
    sget-object v0, Lcom/google/android/gms/fitness/data/zzr;->QD:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3ee
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :pswitch_3f2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_c

    :sswitch_data_3f6
    .sparse-switch
        -0x7aca8e3f -> :sswitch_173
        -0x78dbb2d8 -> :sswitch_118
        -0x78a3165f -> :sswitch_1db
        -0x73995747 -> :sswitch_7d
        -0x6a534859 -> :sswitch_d
        -0x68c618a5 -> :sswitch_1e8
        -0x62f0f65d -> :sswitch_202
        -0x58a2a8a7 -> :sswitch_5a
        -0x576f2e5d -> :sswitch_1a7
        -0x4a6f73d9 -> :sswitch_18d
        -0x41b72132 -> :sswitch_2c5
        -0x418c053f -> :sswitch_23
        -0x41086331 -> :sswitch_1ce
        -0x3703827a -> :sswitch_159
        -0x35adf422 -> :sswitch_14c
        -0x34d7fa86 -> :sswitch_1f5
        -0x2e547067 -> :sswitch_1c1
        -0x276fb1e0 -> :sswitch_2ec
        -0x19531a28 -> :sswitch_2f9
        -0x159a1330 -> :sswitch_ca
        -0xcf87dff -> :sswitch_71
        -0xb138ceb -> :sswitch_26a
        -0xa914958 -> :sswitch_229
        -0x9cf62d1 -> :sswitch_18
        -0x5d9a8ae -> :sswitch_1b4
        -0x36313b9 -> :sswitch_fe
        -0x29b41b4 -> :sswitch_b0
        0x25e77d -> :sswitch_e4
        0x334844a -> :sswitch_96
        0x100b5dd2 -> :sswitch_2e
        0x11a17525 -> :sswitch_277
        0x11a86cff -> :sswitch_10b
        0x135b7527 -> :sswitch_2ab
        0x1688bcfc -> :sswitch_39
        0x1f93005b -> :sswitch_25d
        0x272fa39d -> :sswitch_2b8
        0x28b417b3 -> :sswitch_65
        0x322ac56f -> :sswitch_44
        0x34548857 -> :sswitch_29e
        0x359fd3fd -> :sswitch_125
        0x37ce7e92 -> :sswitch_89
        0x386d984e -> :sswitch_21c
        0x387123eb -> :sswitch_2d2
        0x417634eb -> :sswitch_19a
        0x42436c6b -> :sswitch_a3
        0x485d9a4b -> :sswitch_2df
        0x53b12729 -> :sswitch_243
        0x55d3a082 -> :sswitch_236
        0x5866d0a1 -> :sswitch_4f
        0x5ad680e1 -> :sswitch_166
        0x6157eef0 -> :sswitch_20f
        0x63d46a04 -> :sswitch_bd
        0x6c75d235 -> :sswitch_f1
        0x728b65e4 -> :sswitch_180
        0x72ca1c55 -> :sswitch_13f
        0x75c5dfed -> :sswitch_132
        0x7604eb32 -> :sswitch_291
        0x7a4ca5e1 -> :sswitch_250
        0x7a65df9f -> :sswitch_284
        0x7f10d488 -> :sswitch_d7
    .end sparse-switch

    :pswitch_data_4e8
    .packed-switch 0x0
        :pswitch_306
        :pswitch_30a
        :pswitch_30e
        :pswitch_312
        :pswitch_316
        :pswitch_31a
        :pswitch_31e
        :pswitch_322
        :pswitch_326
        :pswitch_32a
        :pswitch_32e
        :pswitch_332
        :pswitch_336
        :pswitch_33a
        :pswitch_33e
        :pswitch_342
        :pswitch_346
        :pswitch_34a
        :pswitch_34e
        :pswitch_352
        :pswitch_356
        :pswitch_35a
        :pswitch_35e
        :pswitch_362
        :pswitch_366
        :pswitch_36a
        :pswitch_36e
        :pswitch_372
        :pswitch_376
        :pswitch_37a
        :pswitch_37e
        :pswitch_382
        :pswitch_386
        :pswitch_38a
        :pswitch_38e
        :pswitch_392
        :pswitch_396
        :pswitch_39a
        :pswitch_39e
        :pswitch_3a2
        :pswitch_3a6
        :pswitch_3aa
        :pswitch_3ae
        :pswitch_3b2
        :pswitch_3b6
        :pswitch_3ba
        :pswitch_3be
        :pswitch_3c2
        :pswitch_3c6
        :pswitch_3ca
        :pswitch_3ce
        :pswitch_3d2
        :pswitch_3d6
        :pswitch_3da
        :pswitch_3de
        :pswitch_3e2
        :pswitch_3e6
        :pswitch_3ea
        :pswitch_3ee
        :pswitch_3f2
    .end packed-switch
.end method
