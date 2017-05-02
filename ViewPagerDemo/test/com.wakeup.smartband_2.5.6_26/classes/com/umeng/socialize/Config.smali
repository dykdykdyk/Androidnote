.class public Lcom/umeng/socialize/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static Descriptor:Ljava/lang/String; = null

.field public static EntityKey:Ljava/lang/String; = null

.field public static EntityName:Ljava/lang/String; = null

.field public static IsToastTip:Z = false

.field public static LinkedInProfileScope:I = 0x0

.field public static LinkedInShareCode:I = 0x0

.field public static OpenEditor:Z = false

.field public static QQAPPNAME:Ljava/lang/String; = null

.field public static QQWITHQZONE:I = 0x0

.field public static REDIRECT_URL:Ljava/lang/String; = null

.field public static SDK_VERSION:Ljava/lang/String; = null

.field public static SessionId:Ljava/lang/String; = null

.field public static ShareLocation:Z = false

.field public static UID:Ljava/lang/String; = null

.field public static UseCocos:I = 0x0

.field public static WBBYQQ:Z = false

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field public static dialog:Landroid/app/Dialog; = null

.field public static dialogSwitch:Z = false

.field public static imageSize:F = 0.0f

.field public static isIntentShareFB:Z = false

.field public static isloadUrl:Z = false

.field public static final mEncrypt:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    sput-boolean v2, Lcom/umeng/socialize/Config;->OpenEditor:Z

    .line 17
    sput-boolean v2, Lcom/umeng/socialize/Config;->ShareLocation:Z

    .line 19
    sput-object v3, Lcom/umeng/socialize/Config;->UID:Ljava/lang/String;

    .line 21
    sput-object v3, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    .line 23
    sput-object v3, Lcom/umeng/socialize/Config;->EntityName:Ljava/lang/String;

    .line 25
    sput-boolean v2, Lcom/umeng/socialize/Config;->WBBYQQ:Z

    .line 29
    const-string/jumbo v0, "com.umeng.share"

    sput-object v0, Lcom/umeng/socialize/Config;->Descriptor:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "5.1.1"

    sput-object v0, Lcom/umeng/socialize/Config;->SDK_VERSION:Ljava/lang/String;

    .line 33
    sput-object v3, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    .line 34
    sput v1, Lcom/umeng/socialize/Config;->QQWITHQZONE:I

    .line 35
    const-string/jumbo v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->QQAPPNAME:Ljava/lang/String;

    .line 37
    sput-object v3, Lcom/umeng/socialize/Config;->dialog:Landroid/app/Dialog;

    .line 38
    sput v1, Lcom/umeng/socialize/Config;->UseCocos:I

    .line 39
    sput-boolean v1, Lcom/umeng/socialize/Config;->isloadUrl:Z

    .line 40
    const/high16 v0, 0x45400000

    sput v0, Lcom/umeng/socialize/Config;->imageSize:F

    .line 44
    const-string/jumbo v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->a:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->b:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "http://sns.whalecloud.com"

    sput-object v0, Lcom/umeng/socialize/Config;->REDIRECT_URL:Ljava/lang/String;

    .line 58
    sput-boolean v2, Lcom/umeng/socialize/Config;->IsToastTip:Z

    .line 80
    sput v1, Lcom/umeng/socialize/Config;->LinkedInProfileScope:I

    .line 84
    sput v1, Lcom/umeng/socialize/Config;->LinkedInShareCode:I

    .line 86
    sput-boolean v2, Lcom/umeng/socialize/Config;->dialogSwitch:Z

    .line 88
    sput-boolean v1, Lcom/umeng/socialize/Config;->isIntentShareFB:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

