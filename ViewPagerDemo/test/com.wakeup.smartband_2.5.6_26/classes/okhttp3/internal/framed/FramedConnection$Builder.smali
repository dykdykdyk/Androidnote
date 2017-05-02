.class public Lokhttp3/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostname:Ljava/lang/String;

.field private listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private protocol:Lokhttp3/Protocol;

.field private pushObserver:Lokhttp3/internal/framed/PushObserver;

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;


# direct methods
