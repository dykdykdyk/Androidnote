angular.module('service.ble', ['plugin.ble'])

.factory('bleService', ['$q', '$timeout', 'ble', function($q, $timeout, ble) {

	return {
        set_time:function(deviceID,cmd,value){
            var q = $q.defer();
            ble.set_time(deviceID,cmd,value, function(result) {
                q.notify(result);
            }, function(error) {
                q.reject(error);
            });
            return q.promise;
        },
        request_progress:function(deviceID,cmd,value){
            var q = $q.defer();
            ble.request_progress(deviceID,cmd,value, function(result) {
                q.notify(result);
            }, function(error) {
                q.reject(error);
            });
            return q.promise;
        },

        bleRefresh:function(deviceID,cmd,value){
            var q = $q.defer();
            ble.bleRefresh(deviceID,cmd,value, function(result) {
                q.notify(result);
            }, function(error) {
                q.reject(error);
            });
            return q.promise;
        },
        dataRefresh:function(deviceID,cmd){
            var q = $q.defer();
            ble.dataRefresh(deviceID,cmd, function(result) {
                q.notify(result);
            }, function(error) {
                q.reject(error);
            });

            return q.promise;
        },
        scan_device_by_id: function(device_id, seconds) {
            var q = $q.defer();

            ble.startScan([], function(peripheral) {
                if (peripheral.id == device_id) {
                    q.resolve();
                }
            }, function(error) {
                q.reject(error);
            });

            $timeout(function() {
                ble.stopScan(function() {
                    q.reject();
                }, function(error) {
                    q.reject(error);
                });
            }, seconds * 1000);

            return q.promise;
        },

        scan: function(services, seconds) {
			var q = $q.defer();

			ble.startScan(services, function(result) {
				q.notify(result);
			}, function(error) {
				q.reject(error);
			});

			$timeout(function() {
				ble.stopScan(function() {
					q.resolve();
				}, function(error) {
					q.reject(error);
				});
			}, seconds * 1000);

			return q.promise;
		},

		connect: function(deviceID,value) {
			var q = $q.defer();
			ble.connect(deviceID,value, function(peripheral) {
                peripheral.status = "connected";
				q.notify(peripheral);
			}, function(peripheral) {
                peripheral.status = "disconnected";
				q.notify(peripheral);
			});
			return q;
		},

		disconnect: function(deviceID) {
			var q = $q.defer();
			ble.disconnect(deviceID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		getRSSI: function(deviceID) {
			var q = $q.defer();
			ble.getRSSI(deviceID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

        setOption: function(deviceID, cmd, value) {
            var q = $q.defer();
            ble.setOption(deviceID, cmd, value, function(result) {
                q.resolve(result);
             }, function(error) {
                q.reject(error);
             });
            return q.promise;
         },

		read: function(deviceID, serviceUUID, characteristicUUID) {
			var q = $q.defer();
			ble.read(deviceID, serviceUUID, characteristicUUID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		write: function(deviceID, serviceUUID, characteristicUUID, data) {
			var q = $q.defer();
			ble.write(deviceID, serviceUUID, characteristicUUID, data, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		writeCommand: function(deviceID, serviceUUID, characteristicUUID, data) {
			var q = $q.defer();
			ble.writeCommand(deviceID, serviceUUID, characteristicUUID, data, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		startNotification: function(deviceID, serviceUUID, characteristicUUID) {
			var q = $q.defer();
			ble.startNotification(deviceID, serviceUUID, characteristicUUID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		stopNotification: function(deviceID, serviceUUID, characteristicUUID) {
			var q = $q.defer();
			ble.stopNotification(deviceID, serviceUUID, characteristicUUID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		isConnected: function(deviceID) {
			var q = $q.defer();
			ble.isConnected(deviceID, function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		},

		isEnabled: function() {
			var q = $q.defer();
			ble.isEnabled(function(result) {
				q.resolve(result);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		}
	};
}]);