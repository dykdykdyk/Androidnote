.class final Lcom/google/android/gms/internal/zzrt$zza;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrt$zza$zza;
    }
.end annotation


# static fields
.field private static final AQ:Lcom/google/android/gms/internal/zzrt$zza;

.field private static final AR:Lcom/google/android/gms/internal/zzrt$zza$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzrt$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrt$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrt$zza;->AQ:Lcom/google/android/gms/internal/zzrt$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzrt$zza$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrt$zza$zza;-><init>(Lcom/google/android/gms/internal/zzrt$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrt$zza;->AR:Lcom/google/android/gms/internal/zzrt$zza$zza;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zzato()Lcom/google/android/gms/internal/zzrt$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrt$zza;->AQ:Lcom/google/android/gms/internal/zzrt$zza;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzrt$zza;->AR:Lcom/google/android/gms/internal/zzrt$zza$zza;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
