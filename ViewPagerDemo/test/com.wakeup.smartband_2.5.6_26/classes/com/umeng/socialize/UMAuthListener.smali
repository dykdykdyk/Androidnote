.class public interface abstract Lcom/umeng/socialize/UMAuthListener;
.super Ljava/lang/Object;
.source "UMAuthListener.java"


# static fields
.field public static final ACTION_AUTHORIZE:I = 0x0

.field public static final ACTION_DELETE:I = 0x1

.field public static final ACTION_GET_PROFILE:I = 0x2

.field public static final dummy:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/umeng/socialize/d;

    invoke-direct {v0}, Lcom/umeng/socialize/d;-><init>()V

    sput-object v0, Lcom/umeng/socialize/UMAuthListener;->dummy:Lcom/umeng/socialize/UMAuthListener;

    return-void
.end method


# virtual methods
.method public abstract onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
.end method

.method public abstract onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
.end method
