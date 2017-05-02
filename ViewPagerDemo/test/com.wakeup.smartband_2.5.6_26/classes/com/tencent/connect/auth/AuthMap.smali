.class public Lcom/tencent/connect/auth/AuthMap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthMap$Auth;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static b:I

.field public static sInstance:Lcom/tencent/connect/auth/AuthMap;


# instance fields
.field public final KEY_CHAR_LIST:Ljava/lang/String;

.field public authMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/auth/AuthMap$Auth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const-class v0, Lcom/tencent/connect/auth/AuthMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/tencent/connect/auth/AuthMap;->a:Z

    .line 11
    sput v1, Lcom/tencent/connect/auth/AuthMap;->b:I

    return-void

    :cond_f
    move v0, v1

    .line 8
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

