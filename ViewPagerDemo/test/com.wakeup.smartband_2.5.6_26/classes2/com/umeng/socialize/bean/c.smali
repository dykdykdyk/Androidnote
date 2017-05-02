.class final enum Lcom/umeng/socialize/bean/c;
.super Lcom/umeng/socialize/bean/RequestType;
.source "RequestType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/bean/RequestType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/bean/a;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string/jumbo v0, "2"

    return-object v0
.end method
