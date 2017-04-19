angular.module('ufind1.services.devices', [])

.factory('deviceService', function() {
	var devices = [];

	return {
		all: function() {
			return devices;
		},
		serialize: function() {
			localStorage.setItem("devices", angular.toJson(devices))
		},
		deserialize: function() {
			devices = angular.fromJson(localStorage.getItem("devices"));
			if (typeof(devices) === 'undefined' || devices === null) {
				return devices = [];
			} else {
				return devices;
			}
		},
        get: function(deviceId) {
			for (var i = 0; i < devices.length; i++) {
				if (devices[i].id === deviceId) {
					return devices[i];
				}
			}
			return null;
		},
		add: function(device) {
			devices = devices.concat(device);
		},
		del: function(deviceId) {
			for (var i = 0; i < devices.length; i++) {
				if (devices[i].id === deviceId) {
					break;
				}
			}

			if (i > -1) {
				devices.splice(i, 1);
			}
		}
	};
});