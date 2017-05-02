.class public Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/dataprovider/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAndMediaPath"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath$1;

    invoke-direct {v0}, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath$1;-><init>()V

    sput-object v0, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

