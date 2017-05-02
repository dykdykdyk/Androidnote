.class public Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;
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
            "Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly$1;

    invoke-direct {v0}, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly$1;-><init>()V

    sput-object v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

