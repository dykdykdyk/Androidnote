.class public Lcom/wakeup/smartband/ble_service/BleDataHandler;
.super Ljava/lang/Object;
.source "BleDataHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PACKET_COMPLETE:I = 0x0

.field public static final PACKET_DATA_OVERSIZE:I = 0x2

.field public static final PACKET_INCOMPLETE:I = 0x1

.field private static final TIMEOUT_COUNT:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dataPacket:Lcom/wakeup/smartband/chignon/DataPacket;

.field public dialog_message:Ljava/lang/String;

.field private packetCounter:I

.field private timeoutCounter:I


# direct methods
.method public constructor <init>()V
    .registers 3

