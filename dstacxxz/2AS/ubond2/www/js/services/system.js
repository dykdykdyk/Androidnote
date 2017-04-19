angular.module('ufind1.services.system', [])

.factory('systemService', function() {
	var system_default = {


        language:null,

		silentTime: false,
		silentStartHour1: "00",
		silentStartMinute1: "00",
		silentStopHour1: "00",
		silentStopMinute1: "00",
		silentWeekDay1: 127,
		silentStartHour2: "00",
		silentStartMinute2: "00",
		silentStopHour2: "00",
		silentStopMinute2: "00",
		silentWeekDay2: 127,

        silentArea: false,
        silentArea1x0: 0.0,
        silentArea1y0: 0.0,
        silentArea1Radius:100,
        silentArea2x0: 0.0,
        silentArea2y0: 0.0,
        silentArea2Radius:100,
        silentArea3x0: 0.0,
        silentArea3y0: 0.0,
        silentArea3Radius:100,

        silentWifi1: "",
        silentWifi2: "",
        silentWifi3: "",
        is_connected : false
	};

	var system;

	return {
		all: function() {
			return system;
		},
		serialize: function() {
			localStorage.setItem("system", angular.toJson(system))
		},
		deserialize: function() {
			tmp = angular.fromJson(localStorage.getItem("system"));
			if (typeof(tmp) === 'undefined' || tmp === null) {
				system = system_default;
				return system;
			} else {
				system = tmp;
				return system;
			}
		}
	}
});