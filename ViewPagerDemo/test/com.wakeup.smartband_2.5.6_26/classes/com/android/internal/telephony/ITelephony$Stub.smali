.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x2a

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x16

.field static final TRANSACTION_disableDataConnectivity:I = 0x18

.field static final TRANSACTION_disableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableApnType:I = 0x15

.field static final TRANSACTION_enableDataConnectivity:I = 0x17

.field static final TRANSACTION_enableLocationUpdates:I = 0x13

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getATR:I = 0x2c

.field static final TRANSACTION_getActivePhoneType:I = 0x1f

.field static final TRANSACTION_getCallState:I = 0x1c

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x20

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x21

.field static final TRANSACTION_getCdmaEriText:I = 0x22

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1a

.field static final TRANSACTION_getDataActivity:I = 0x1d

.field static final TRANSACTION_getDataState:I = 0x1e

.field static final TRANSACTION_getLastError:I = 0x2b

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1b

.field static final TRANSACTION_getNetworkType:I = 0x25

.field static final TRANSACTION_getVoiceMessageCount:I = 0x24

.field static final TRANSACTION_handlePinMmi:I = 0xf

.field static final TRANSACTION_hasIccCard:I = 0x26

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x19

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_openIccLogicalChannel:I = 0x29

.field static final TRANSACTION_setRadio:I = 0x11

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x28

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x27

.field static final TRANSACTION_updateServiceLocation:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

