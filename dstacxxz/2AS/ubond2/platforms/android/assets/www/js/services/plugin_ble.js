angular.module('plugin.ble', [])

.factory('ble', function() {

	var stringToArrayBuffer = function(str) {
		var ret = new Uint8Array(str.length);
		for (var i = 0; i < str.length; i++) {
			ret[i] = str.charCodeAt(i);
		}
		// TODO would it be better to return Uint8Array?
		return ret.buffer;
	};

	var base64ToArrayBuffer = function(b64) {
		return stringToArrayBuffer(atob(b64));
	};

	function massageMessageNativeToJs(message) {
		if (message.CDVType == 'ArrayBuffer') {
			message = base64ToArrayBuffer(message.data);
		}
		return message;
	}

	// Cordova 3.6 doesn't unwrap ArrayBuffers in nested data structures
	// https://github.com/apache/cordova-js/blob/94291706945c42fd47fa632ed30f5eb811080e95/src/ios/exec.js#L107-L122
	function convertToNativeJS(object) {
		Object.keys(object).forEach(function(key) {
			var value = object[key];
			object[key] = massageMessageNativeToJs(value);
			if (typeof(value) === 'object') {
				convertToNativeJS(value);
			}
		});
	}

	return {
        set_time:function(device_id,cmd,value,success, failure){
            var successWrapper = function(peripheral) {
                convertToNativeJS(peripheral);
                success(peripheral);
            };
            cordova.exec(successWrapper, failure, 'BLE', 'cmdGetGN', [device_id, cmd , value]);
        },
        request_progress:function(device_id,cmd,value,success, failure){
            var successWrapper = function(peripheral) {
                convertToNativeJS(peripheral);
                success(peripheral);
            };
            cordova.exec(successWrapper, failure, 'BLE', 'requestProgress', [device_id, cmd , value]);
        },

        bleRefresh:function(device_id,cmd,value,success, failure){
            var successWrapper = function(peripheral) {
                convertToNativeJS(peripheral);
                success(peripheral);
            };
            cordova.exec(successWrapper, failure, 'BLE', 'bleRefresh', [device_id, cmd , value]);
        },
        dataRefresh:function(device_id,cmd,success, failure){
            var successWrapper = function(peripheral) {
                convertToNativeJS(peripheral);
                success(peripheral);
            };
            cordova.exec(successWrapper, failure, 'BLE', 'dataRefresh', [device_id, cmd]);
        },

		scan: function(services, seconds, success, failure) {
			var successWrapper = function(peripheral) {
				convertToNativeJS(peripheral);
				success(peripheral);
			};
			cordova.exec(successWrapper, failure, 'BLE', 'scan', [services, seconds]);
		},

		startScan: function(services, success, failure) {
			var successWrapper = function(peripheral) {
				convertToNativeJS(peripheral);
				success(peripheral);
			};
			cordova.exec(successWrapper, failure, 'BLE', 'startScan', [services]);
		},

		stopScan: function(success, failure) {
			cordova.exec(success, failure, 'BLE', 'stopScan', []);
		},

		connect: function(device_id,value, success, failure) {
			var successWrapper = function(peripheral) {
				convertToNativeJS(peripheral);
				success(peripheral);
			};
			cordova.exec(successWrapper, failure, 'BLE', 'connect', [device_id,value]);
		},

		getRSSI: function(device_id, success, failure) {
			cordova.exec(success, failure, 'BLE', 'getRSSI', [device_id]);
		},
        
        setOption:function(device_id, cmd, value, success, failure){
        	cordova.exec(success, failure, 'BLE', 'setOption', [device_id, cmd, value]);
        },

		disconnect: function(device_id, success, failure) {
			cordova.exec(success, failure, 'BLE', 'disconnect', [device_id]);
		},

		// characteristic value comes back as ArrayBuffer in the success callback
		read: function(device_id, service_uuid, characteristic_uuid, success, failure) {
			cordova.exec(success, failure, 'BLE', 'read', [device_id, service_uuid, characteristic_uuid]);
		},

		// value must be an ArrayBuffer
		write: function(device_id, service_uuid, characteristic_uuid, value, success, failure) {
			cordova.exec(success, failure, 'BLE', 'write', [device_id, service_uuid, characteristic_uuid, value]);
		},

		// value must be an ArrayBuffer
		writeWithoutResponse: function(device_id, service_uuid, characteristic_uuid, value, success, failure) {
			cordova.exec(success, failure, 'BLE', 'writeWithoutResponse', [device_id, service_uuid, characteristic_uuid, value]);
		},

		// value must be an ArrayBuffer
		writeCommand: function(device_id, service_uuid, characteristic_uuid, value, success, failure) {
			console.log("WARNING: writeCommand is deprecated, use writeWithoutResponse");
			cordova.exec(success, failure, 'BLE', 'writeWithoutResponse', [device_id, service_uuid, characteristic_uuid, value]);
		},

		// success callback is called on notification
		notify: function(device_id, service_uuid, characteristic_uuid, success, failure) {
			console.log("WARNING: notify is deprecated, use startNotification");
			cordova.exec(success, failure, 'BLE', 'startNotification', [device_id, service_uuid, characteristic_uuid]);
		},

		// success callback is called on notification
		startNotification: function(device_id, service_uuid, characteristic_uuid, success, failure) {
			cordova.exec(success, failure, 'BLE', 'startNotification', [device_id, service_uuid, characteristic_uuid]);
		},

		// success callback is called when the descriptor 0x2902 is written
		stopNotification: function(device_id, service_uuid, characteristic_uuid, success, failure) {
			cordova.exec(success, failure, 'BLE', 'stopNotification', [device_id, service_uuid, characteristic_uuid]);
		},

		isConnected: function(device_id, success, failure) {
			cordova.exec(success, failure, 'BLE', 'isConnected', [device_id]);
		},

		isEnabled: function(success, failure) {
			cordova.exec(success, failure, 'BLE', 'isEnabled', []);
		},

		enable: function(success, failure) {
			cordova.exec(success, failure, "BLE", "enable", []);
		},

		showBluetoothSettings: function(success, failure) {
			cordova.exec(success, failure, "BLE", "showBluetoothSettings", []);
		}
	};
});