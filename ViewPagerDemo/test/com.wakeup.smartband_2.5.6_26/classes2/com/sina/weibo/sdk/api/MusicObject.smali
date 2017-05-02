.class public Lcom/sina/weibo/sdk/api/MusicObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "MusicObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/MusicObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String; = "extra_key_defaulttext"


# instance fields
.field public dataHdUrl:Ljava/lang/String;

.field public dataUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public duration:I

.field public h5Url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/sina/weibo/sdk/api/MusicObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MusicObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/MusicObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

