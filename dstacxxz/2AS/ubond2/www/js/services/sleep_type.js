/**
 * Created by Administrator on 16-7-21.
 */
angular.module('ufind1.services.sleep_type', [])
    .factory('sleepType', function () {
        /*历史体温*/
        var sleep_type = [];
        return {
            serialize: function() {
                localStorage.setItem("sleepType", angular.toJson(sleep_type))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("sleepType"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    return sleep_type = [];
                } else {
                    sleep_type = tmp;
                    return sleep_type;
                }
            },
            all: function () {
                return sleep_type;
            },
            add: function (ste) {
                sleep_type = sleep_type.concat(ste);
            },

            del: function (star,stop) {
            }
        };
    });