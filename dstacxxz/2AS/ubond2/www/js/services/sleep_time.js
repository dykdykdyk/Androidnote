/**
 * Created by Administrator on 16-7-21.
 */
angular.module('ufind1.services.sleep_time', [])

    .factory('sleepTime', function () {
        /*历史体温*/
        var sleep_time = [];
        return {
            serialize: function() {
                localStorage.setItem("sleepTime", angular.toJson(sleep_time))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("sleepTime"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    return sleep_time = [];
                } else {
                    sleep_time = tmp;
                    return sleep_time;
                }
            },
            all: function () {
                return sleep_time;
            },
            add: function (ste) {
                sleep_time = sleep_time.concat(ste);
            },

            del: function (star,stop) {
            }
        };
    });