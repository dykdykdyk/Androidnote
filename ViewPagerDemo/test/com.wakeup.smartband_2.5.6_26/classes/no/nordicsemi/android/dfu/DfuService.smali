.class interface abstract Lno/nordicsemi/android/dfu/DfuService;
.super Ljava/lang/Object;
.source "DfuService.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract hasRequiredCharacteristics(Landroid/bluetooth/BluetoothGatt;)Z
.end method

.method public abstract hasRequiredService(Landroid/bluetooth/BluetoothGatt;)Z
.end method

.method public abstract initialize(Landroid/content/Intent;Landroid/bluetooth/BluetoothGatt;ILjava/io/InputStream;Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation
.end method

.method public abstract onBondStateChanged(I)V
.end method

.method public abstract pause()V
.end method

.method public abstract performDfu(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method
