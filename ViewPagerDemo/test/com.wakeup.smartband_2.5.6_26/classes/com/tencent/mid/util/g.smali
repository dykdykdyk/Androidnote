.class public Lcom/tencent/mid/util/g;
.super Ljava/lang/Object;


# static fields
.field static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "03a976511e2cbe3a7f26808fb7af3c05"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/g;->a:[B

    return-void
.end method

