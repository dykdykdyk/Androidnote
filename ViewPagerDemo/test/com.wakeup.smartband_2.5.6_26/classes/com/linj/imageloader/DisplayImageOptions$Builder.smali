.class public Lcom/linj/imageloader/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/imageloader/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

.field private fromNet:Z

.field private imageResOnFail:I

.field private imageResOnLoading:I


# direct methods
.method public constructor <init>()V
    .registers 1

