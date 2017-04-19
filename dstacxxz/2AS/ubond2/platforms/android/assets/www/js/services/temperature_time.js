/**
 * Created by Administrator on 16-7-4.
 */
angular.module('ufind1.services.temperature_time', [])

    .factory('temperatureTimeService', function () {
        /*历史体温时间*/
        var temperature_time = [];
        return {
            serialize: function() {
                localStorage.setItem("temperature_time", angular.toJson(temperature_time))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("temperature_time"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    return temperature_time = [];
                } else {
                    temperature_time = tmp;
                    return temperature_time;
                }
            },
            all: function () {
                return temperature_time;
            },
            add: function (ste) {
                temperature_time = temperature_time.concat(ste);
            },

            del: function (star,stop) {
            }
        };
    });