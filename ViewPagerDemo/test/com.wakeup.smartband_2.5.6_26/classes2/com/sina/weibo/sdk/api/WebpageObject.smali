.class public Lcom/sina/weibo/sdk/api/WebpageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "WebpageObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/WebpageObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String; = "extra_key_defaulttext"


# instance fields
.field public defaultText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/WebpageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 1

