.class public interface abstract Lcom/umeng/socialize/view/UMFriendListener;
.super Ljava/lang/Object;
.source "UMFriendListener.java"


# static fields
.field public static final dummy:Lcom/umeng/socialize/view/UMFriendListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/umeng/socialize/view/h;

    invoke-direct {v0}, Lcom/umeng/socialize/view/h;-><init>()V

    sput-object v0, Lcom/umeng/socialize/view/UMFriendListener;->dummy:Lcom/umeng/socialize/view/UMFriendListener;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
.end method
