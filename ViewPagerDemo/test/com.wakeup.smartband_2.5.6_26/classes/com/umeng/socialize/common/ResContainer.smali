.class public final Lcom/umeng/socialize/common/ResContainer;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/ResContainer$SocializeResource;
    }
.end annotation


# static fields
.field private static R:Lcom/umeng/socialize/common/ResContainer;

.field private static mPackageName:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->R:Lcom/umeng/socialize/common/ResContainer;

    .line 84
    const-string/jumbo v0, ""

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    return-void
.end method

