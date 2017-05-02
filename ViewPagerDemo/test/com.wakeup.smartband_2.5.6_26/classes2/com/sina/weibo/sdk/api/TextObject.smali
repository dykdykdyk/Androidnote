.class public Lcom/sina/weibo/sdk/api/TextObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "TextObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/TextObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/TextObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

