.class public Lcom/umeng/socialize/utils/SocializeUtils;
.super Ljava/lang/Object;
.source "SocializeUtils.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SocializeUtils"

.field public static deleteUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static mDoubleByte_Pattern:Ljava/util/regex/Pattern;

.field private static smDip:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->mDoubleByte_Pattern:Ljava/util/regex/Pattern;

    .line 269
    const/4 v0, 0x0

    sput v0, Lcom/umeng/socialize/utils/SocializeUtils;->smDip:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

