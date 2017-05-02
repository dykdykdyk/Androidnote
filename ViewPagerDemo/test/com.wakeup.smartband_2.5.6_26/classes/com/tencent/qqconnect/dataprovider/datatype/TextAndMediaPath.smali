.class public Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;",
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
    .line 34
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;

    invoke-direct {v0}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;-><init>()V

    sput-object v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

