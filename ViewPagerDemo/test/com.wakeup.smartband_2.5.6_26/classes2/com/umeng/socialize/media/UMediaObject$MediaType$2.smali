.class final enum Lcom/umeng/socialize/media/UMediaObject$MediaType$2;
.super Lcom/umeng/socialize/media/UMediaObject$MediaType;
.source "UMediaObject.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/media/UMediaObject$MediaType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/media/UMediaObject$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string/jumbo v0, "1"

    return-object v0
.end method
