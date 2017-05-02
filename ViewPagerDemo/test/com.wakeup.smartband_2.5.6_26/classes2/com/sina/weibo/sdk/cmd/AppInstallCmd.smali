.class Lcom/sina/weibo/sdk/cmd/AppInstallCmd;
.super Lcom/sina/weibo/sdk/cmd/BaseCmd;
.source "AppInstallCmd.java"


# instance fields
.field private appPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appSign:Ljava/lang/String;

.field private appVersion:J

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

