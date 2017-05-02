.class public Lcom/zhy/http/okhttp/utils/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/utils/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/zhy/http/okhttp/utils/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    invoke-static {}, Lcom/zhy/http/okhttp/utils/Platform;->findPlatform()Lcom/zhy/http/okhttp/utils/Platform;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/utils/Platform;->PLATFORM:Lcom/zhy/http/okhttp/utils/Platform;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

