.class public Lcom/sina/weibo/sdk/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final DRAWABLE_HDPI:Ljava/lang/String; = "drawable-hdpi"

.field private static final DRAWABLE_LDPI:Ljava/lang/String; = "drawable-ldpi"

.field private static final DRAWABLE_MDPI:Ljava/lang/String; = "drawable-mdpi"

.field private static final DRAWABLE_XHDPI:Ljava/lang/String; = "drawable-xhdpi"

.field private static final DRAWABLE_XXHDPI:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const-class v0, Lcom/sina/weibo/sdk/utils/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    const-string/jumbo v2, "drawable-xxhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string/jumbo v2, "drawable-xhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string/jumbo v2, "drawable-hdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string/jumbo v2, "drawable-mdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string/jumbo v2, "drawable-ldpi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string/jumbo v2, "drawable"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 1

