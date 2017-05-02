.class public Lcom/sina/weibo/sdk/utils/SDKNotification$SDKNotificationBuilder;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/SDKNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKNotificationBuilder"
.end annotation


# instance fields
.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationPendingIntent:Landroid/app/PendingIntent;

.field private mNotificationTitle:Ljava/lang/String;

.field private mSoundUri:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/String;

.field private mVibrate:[J


# direct methods
.method public constructor <init>()V
    .registers 1

