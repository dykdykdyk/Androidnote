.class Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/aztec/encoder/State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
    .registers 5
    .param p1, "a"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "b"    # Lcom/google/zxing/aztec/encoder/State;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Lcom/google/zxing/aztec/encoder/State;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/zxing/aztec/encoder/State;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I

    move-result v0

    return v0
.end method
