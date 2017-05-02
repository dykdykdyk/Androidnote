.class public Lcom/sina/weibo/sdk/api/CmdObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "CmdObject.java"


# static fields
.field public static final CMD_HOME:Ljava/lang/String; = "home"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/CmdObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/sina/weibo/sdk/api/CmdObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/CmdObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/CmdObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

