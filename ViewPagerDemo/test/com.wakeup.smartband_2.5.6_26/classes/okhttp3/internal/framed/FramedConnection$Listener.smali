.class public abstract Lokhttp3/internal/framed/FramedConnection$Listener;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lokhttp3/internal/framed/FramedConnection$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 922
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Listener$1;

    invoke-direct {v0}, Lokhttp3/internal/framed/FramedConnection$Listener$1;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

