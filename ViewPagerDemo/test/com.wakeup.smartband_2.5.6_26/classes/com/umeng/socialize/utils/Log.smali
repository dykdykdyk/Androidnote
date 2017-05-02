.class public Lcom/umeng/socialize/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ENCRYPT_LOG:Z = true

.field public static LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "umengsocial"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/utils/Log;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

