.class public final Lcom/google/android/gms/fitness/data/DataType$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final PF:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string/jumbo v1, "com.google.internal.session.debug"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/fitness/data/Field$zza;->Qi:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->PF:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method
