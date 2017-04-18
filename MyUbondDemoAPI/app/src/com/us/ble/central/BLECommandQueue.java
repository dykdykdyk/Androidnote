package com.us.ble.central;

import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;

@SuppressLint("NewApi")
public class BLECommandQueue {
	public static final String TAG = BLECommandQueue.class.getSimpleName();
	private boolean bleProcessing = false;

	private Peripheral mPeripheral;
	public final static UUID CLIENT_CHARACTERISTIC_CONFIGURATION_UUID = UUIDHelper
			.uuidFromString("2902");

	/** 队列 */
	private ConcurrentLinkedQueue<BLECommand> commandQueue = new ConcurrentLinkedQueue<BLECommand>();

	public BLECommandQueue(Peripheral peripheral) {
		mPeripheral = peripheral;
	}

	public void add(BLECommand command) {
		commandQueue.add(command);
		sendCommand();

	}
	public void commandCompleted() {
		L.i(TAG, "Processing Complete");
		// bleProcessing = false;
		// processCommands();
	}
	/**
	 * 发送命令包
	 */
	public void sendCommand() {
		if (!bleProcessing) {
			bleProcessing = true;
			Iterator<BLECommand> iterator = getIterable();
			while (iterator.hasNext()) {
				BLECommand bleCommand = iterator.next();
				if (bleCommand.retryCount == 0 && !bleCommand.isSendSuccess) {
					bleCommand.retryCount++;
					bleCommand.sendTime = System.currentTimeMillis();
					processCommands(bleCommand);
				}
			}
			bleProcessing = false;
		}
	}

	// process the queue
	public void processCommands(BLECommand command) {
		L.i(TAG, "Processing Commands");
		// BLECommand command = commandQueue.element();
		if (command != null) {
			if (command.getType() == BLECommand.READ) {
				L.i(TAG, "Read " + command.getCharacteristicUUID());
				readCharacteristic(command.getServiceUUID(),
						command.getCharacteristicUUID());
				commandQueue.remove(command);
			} else if (command.getType() == BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT) {
				L.i(TAG, "Write " + command.getCharacteristicUUID());
				writeCharacteristic(command.getServiceUUID(),
						command.getCharacteristicUUID(), command.getData(),
						command.getType());
			} else if (command.getType() == BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE) {
				L.i(TAG, "Write No Response " + command.getCharacteristicUUID());
				writeCharacteristic(command.getServiceUUID(),
						command.getCharacteristicUUID(), command.getData(),
						command.getType());
			} else if (command.getType() == BLECommand.REGISTER_NOTIFY) {
				L.i(TAG, "Register Notify " + command.getCharacteristicUUID());
				registerNotifyCallback(command.getServiceUUID(),
						command.getCharacteristicUUID());
				commandQueue.remove(command);
			} else if (command.getType() == BLECommand.REMOVE_NOTIFY) {
				L.i(TAG, "Remove Notify " + command.getCharacteristicUUID());
				removeNotifyCallback(command.getServiceUUID(),
						command.getCharacteristicUUID());
				commandQueue.remove(command);
			} else if (command.getType() == BLECommand.READ_RSSI) {
				L.i(TAG, "Read RSSI");
				readRSSI();
				commandQueue.remove(command);
			} else {
				// this shouldn't happen
				throw new RuntimeException("Unexpected BLE Command type "
						+ command.getType());
			}
		} else {
			L.i(TAG, "Command Queue is empty.");
		}
	}

	/**
	 * 得到存储命令包的迭代器
	 * 
	 * @return
	 */
	public Iterator<BLECommand> getIterable() {
		return commandQueue.iterator();
	}

	private void readCharacteristic(UUID serviceUUID, UUID characteristicUUID) {

		boolean success = false;

		BluetoothGattService service = mPeripheral.mGatt
				.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findReadableCharacteristic(
				service, characteristicUUID);

		if (characteristic == null) {
		} else {
			if (mPeripheral.mGatt.readCharacteristic(characteristic)) {
				success = true;
			} else {
			}
		}

	}
	private void readRSSI() {
		L.i(TAG, "readRSSI..");
		boolean success = false;

		if (mPeripheral.mGatt == null) {
			return;
		}

		if (mPeripheral.mGatt.readRemoteRssi()) {
			success = true;
		} else {
		}

	}
	// Some peripherals re-use UUIDs for multiple characteristics so we need to
	// check the properties
	// and UUID of all characteristics instead of using
	// service.getCharacteristic(characteristicUUID)
	private BluetoothGattCharacteristic findReadableCharacteristic(
			BluetoothGattService service, UUID characteristicUUID) {
		BluetoothGattCharacteristic characteristic = null;

		int read = BluetoothGattCharacteristic.PROPERTY_READ;

		List<BluetoothGattCharacteristic> characteristics = service
				.getCharacteristics();
		for (BluetoothGattCharacteristic c : characteristics) {
			if ((c.getProperties() & read) != 0
					&& characteristicUUID.equals(c.getUuid())) {
				characteristic = c;
				break;
			}
		}

		// As a last resort, try and find ANY characteristic with this UUID,
		// even if it doesn't have the correct properties
		if (characteristic == null) {
			characteristic = service.getCharacteristic(characteristicUUID);
		}

		return characteristic;
	}
	private void writeCharacteristic(UUID serviceUUID, UUID characteristicUUID, byte[] data, int writeType) {

		boolean success = false;

		if (mPeripheral.mGatt == null) {
			return;
		}

		BluetoothGattService service = mPeripheral.mGatt.getService(serviceUUID);
		BluetoothGattCharacteristic characteristic = findWritableCharacteristic(service, characteristicUUID, writeType);

		if (characteristic == null) {
		} else {
			L.i(TAG, "writeCharacteristic..");
			characteristic.setValue(data);
			characteristic.setWriteType(writeType);
            
			if (mPeripheral.mGatt.writeCharacteristic(characteristic)) {
				success = true;
			} else {
			}
		}

	}
	// Some peripherals re-use UUIDs for multiple characteristics so we need to
		// check the properties
		// and UUID of all characteristics instead of using
		// service.getCharacteristic(characteristicUUID)
		private BluetoothGattCharacteristic findWritableCharacteristic(BluetoothGattService service,
				UUID characteristicUUID, int writeType) {
			BluetoothGattCharacteristic characteristic = null;

			// get write property
			int writeProperty = BluetoothGattCharacteristic.PROPERTY_WRITE;
			if (writeType == BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE) {
				writeProperty = BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE;
			}

			List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
			for (BluetoothGattCharacteristic c : characteristics) {
				if ((c.getProperties() & writeProperty) != 0 && characteristicUUID.equals(c.getUuid())) {
					characteristic = c;
					break;
				}
			}

			// As a last resort, try and find ANY characteristic with this UUID,
			// even if it doesn't have the correct properties
			if (characteristic == null) {
				characteristic = service.getCharacteristic(characteristicUUID);
			}

			return characteristic;
		}
		
		/*
		 * public void updateRssi(int rssi) { advertisingRSSI = rssi; }
		 */
		// This seems way too complicated
		private void registerNotifyCallback(UUID serviceUUID, UUID characteristicUUID) {

			boolean success = false;

			BluetoothGattService service = mPeripheral.mGatt.getService(serviceUUID);
			if(service == null) {


				return;
			}
			BluetoothGattCharacteristic characteristic = findNotifyCharacteristic(service, characteristicUUID);
			if(characteristic == null) {
//				Log.i(TAG, "开启notify失败， 对应uuid的characteristic没找到");
				return;
			}
			String key = generateHashKey(serviceUUID, characteristic);

			if (characteristic != null) {

				if (mPeripheral.mGatt.setCharacteristicNotification(characteristic, true)) {

					// Why doesn't setCharacteristicNotification write the
					// descriptor?
					BluetoothGattDescriptor descriptor = characteristic
							.getDescriptor(CLIENT_CHARACTERISTIC_CONFIGURATION_UUID);
					if (descriptor != null) {

						// prefer notify over indicate
						if ((characteristic.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) != 0) {
							descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
						} else if ((characteristic.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0) {
							descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
						} else {
							L.i(TAG, "Characteristic " + characteristicUUID
									+ " does not have NOTIFY or INDICATE property set");
						}

						if (mPeripheral.mGatt.writeDescriptor(descriptor)) {
							success = true;
						}
					}

				}

			}

		}

		// Some devices reuse UUIDs across characteristics, so we can't use
		// service.getCharacteristic(characteristicUUID)
		// instead check the UUID and properties for each characteristic in the
		// service until we find the best match
		// This function prefers Notify over Indicate
		private BluetoothGattCharacteristic findNotifyCharacteristic(BluetoothGattService service,
				UUID characteristicUUID) {
			BluetoothGattCharacteristic characteristic = null;

			// Check for Notify first
			List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
			for (BluetoothGattCharacteristic c : characteristics) {
				if ((c.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) != 0
						&& characteristicUUID.equals(c.getUuid())) {
					characteristic = c;
					break;
				}
			}

			if (characteristic != null)
				return characteristic;

			// If there wasn't Notify Characteristic, check for Indicate
			for (BluetoothGattCharacteristic c : characteristics) {
				if ((c.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0
						&& characteristicUUID.equals(c.getUuid())) {
					characteristic = c;
					break;
				}
			}

			// As a last resort, try and find ANY characteristic with this UUID,
			// even if it doesn't have the correct properties
			if (characteristic == null) {
				characteristic = service.getCharacteristic(characteristicUUID);
			}

			return characteristic;
		}
	
		private void removeNotifyCallback(UUID serviceUUID, UUID characteristicUUID) {

			BluetoothGattService service = mPeripheral.mGatt.getService(serviceUUID);
			BluetoothGattCharacteristic characteristic = findNotifyCharacteristic(service, characteristicUUID);
			String key = generateHashKey(serviceUUID, characteristic);

			if (characteristic != null) {

			}

		}
		
		private String generateHashKey(BluetoothGattCharacteristic characteristic) {
			return generateHashKey(characteristic.getService().getUuid(), characteristic);
		}

		private String generateHashKey(UUID serviceUUID, BluetoothGattCharacteristic characteristic) {
			return String.valueOf(serviceUUID) + "|" + characteristic.getUuid() + "|" + characteristic.getInstanceId();
		}
}
