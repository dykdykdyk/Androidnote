.class public final Lcom/linj/cameralibrary/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/cameralibrary/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FocusImageView:[I

.field public static final FocusImageView_focus_fail_id:I = 0x2

.field public static final FocusImageView_focus_focusing_id:I = 0x0

.field public static final FocusImageView_focus_success_id:I = 0x1

.field public static final TempImageView:[I

.field public static final TempImageView_animat_id:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/linj/cameralibrary/R$styleable;->FocusImageView:[I

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010100

    aput v2, v0, v1

    sput-object v0, Lcom/linj/cameralibrary/R$styleable;->TempImageView:[I

    return-void

    .line 114
    :array_14
    .array-data 4
        0x7f01005d
        0x7f01005e
        0x7f01005f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

