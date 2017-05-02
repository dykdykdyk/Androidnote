.class public Lcom/laiwang/sdk/message/LWMessage;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/laiwang/sdk/message/IILWMessage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/sdk/message/LWMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LWMessage"

.field protected static final URL_MAX_LEN:I = 0x2800


# instance fields
.field protected appUrl:Ljava/lang/String;

.field protected mLWVersion:I

.field private mThumbImage:Lcom/laiwang/sdk/message/LWMessageImage;

.field protected msgActivity:Ljava/lang/String;

.field protected msgAppKey:Ljava/lang/String;

.field protected msgChat:Ljava/lang/String;

.field protected msgContent:Ljava/lang/String;

.field protected msgIcon:Ljava/lang/String;

.field protected msgImageThumbBMP:Landroid/graphics/Bitmap;

.field protected msgImageThumbPath:Ljava/lang/String;

.field protected msgImageURL:Ljava/lang/String;

.field protected msgLinkUrl:Ljava/lang/String;

.field protected msgSecret:Ljava/lang/String;

.field protected msgShareType:Ljava/lang/String;

.field protected msgSource:Ljava/lang/String;

.field protected msgTitle:Ljava/lang/String;

.field protected msgType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage$1;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage$1;-><init>()V

    sput-object v0, Lcom/laiwang/sdk/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

