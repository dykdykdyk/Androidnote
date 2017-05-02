.class public Lcom/het/common/constant/Configs$ProtocolInfo;
.super Ljava/lang/Object;
.source "Configs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/het/common/constant/Configs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolInfo"
.end annotation


# static fields
.field public static final BODYLENGTH_LENGTH:I = 0x2

.field public static final COMMAND_LENGTH:I = 0x2

.field public static final CURRENT_TIME_LENGTH:I = 0x8

.field public static final ENCRYPT_TYPE_LENGTH:I = 0x1

.field public static final MAC_LENGTH:I = 0x6

.field public static final PACKETHEAD_LENGTH:I = 0x1b

.field public static final PACKET_TYPE_LENGTH:I = 0x1

.field public static final PROTOCOL_VERSION_LENGTH:I = 0x2

.field public static final TERMINAL_SOFTWARE_VERSION_LENGTH:I = 0x3

.field public static final UPLOAD_ITEM_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

