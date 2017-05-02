.class Landroid/support/v4/widget/CompoundButtonCompatGingerbread;
.super Ljava/lang/Object;
.source "CompoundButtonCompatGingerbread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatGingerbread"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 61
    sget-boolean v1, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableFieldFetched:Z

    if-nez v1, :cond_19

    .line 63
    :try_start_6
    const-class v1, Landroid/widget/CompoundButton;

    const-string/jumbo v3, "mButtonDrawable"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_17} :catch_26

    .line 68
    :goto_17
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableFieldFetched:Z

    .line 71
    :cond_19
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3d

    .line 73
    :try_start_1d
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_25} :catch_31

    .line 79
    :goto_25
    return-object v1

    .line 65
    :catch_26
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "CompoundButtonCompatGingerbread"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_31
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "CompoundButtonCompatGingerbread"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3d
    move-object v1, v2

    .line 79
    goto :goto_25
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    .line 42
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 44
    :goto_a
    return-object v0

    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    .line 55
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 57
    :goto_a
    return-object v0

    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 36
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_9
    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 49
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    :cond_9
    return-void
.end method
