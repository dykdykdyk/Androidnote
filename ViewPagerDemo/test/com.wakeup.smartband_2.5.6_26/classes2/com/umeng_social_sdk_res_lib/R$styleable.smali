.class public final Lcom/umeng_social_sdk_res_lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng_social_sdk_res_lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_com_facebook_auxiliary_view_position:I = 0x4

.field public static final com_facebook_like_view_com_facebook_foreground_color:I = 0x0

.field public static final com_facebook_like_view_com_facebook_horizontal_alignment:I = 0x5

.field public static final com_facebook_like_view_com_facebook_object_id:I = 0x1

.field public static final com_facebook_like_view_com_facebook_object_type:I = 0x2

.field public static final com_facebook_like_view_com_facebook_style:I = 0x3

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_com_facebook_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_com_facebook_login_text:I = 0x1

.field public static final com_facebook_login_view_com_facebook_logout_text:I = 0x2

.field public static final com_facebook_login_view_com_facebook_tooltip_mode:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_com_facebook_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_com_facebook_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 506
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/umeng_social_sdk_res_lib/R$styleable;->com_facebook_like_view:[I

    .line 513
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/umeng_social_sdk_res_lib/R$styleable;->com_facebook_login_view:[I

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/umeng_social_sdk_res_lib/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 506
    nop

    :array_1a
    .array-data 4
        0x7f010187
        0x7f010188
        0x7f010189
        0x7f01018a
        0x7f01018b
        0x7f01018c
    .end array-data

    .line 513
    :array_2a
    .array-data 4
        0x7f01018d
        0x7f01018e
        0x7f01018f
        0x7f010190
    .end array-data

    .line 518
    :array_36
    .array-data 4
        0x7f010191
        0x7f010192
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

