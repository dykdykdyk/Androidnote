.class public interface abstract Lcom/wakeup/smartband/service/BluetoothLeService$BLEConnectSuccess;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/service/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BLEConnectSuccess"
.end annotation


# virtual methods
.method public abstract characteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method
