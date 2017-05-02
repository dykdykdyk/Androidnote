.class public Lcom/umeng/socialize/PlatformConfig$TencentWeibo;
.super Ljava/lang/Object;
.source "PlatformConfig.java"

# interfaces
.implements Lcom/umeng/socialize/PlatformConfig$Platform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/PlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TencentWeibo"
.end annotation


# static fields
.field public static final Name:Ljava/lang/String; = "tencent"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

