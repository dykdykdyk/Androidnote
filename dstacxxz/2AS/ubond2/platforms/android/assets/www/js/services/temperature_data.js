/**
 * Created by Administrator on 16-7-4.
 */
angular.module('ufind1.services.temperature_data', [])

    .factory('temperatureService', function () {
        /*历史体温*/

        var temperature_data = [];

        return {
            serialize: function() {
                localStorage.setItem("temperature_data", angular.toJson(temperature_data))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("temperature_data"));
                if (typeof(tmp) === 'undefined' || tmp === null) {

                    return temperature_data = [];
                } else {
                    temperature_data = tmp;
                    return temperature_data;
                }
            },
            all: function () {
                return temperature_data;
            },
            add: function (ste) {
                temperature_data = temperature_data.concat(ste);
            },

            del: function (star,stop) {
            }
        };
    });