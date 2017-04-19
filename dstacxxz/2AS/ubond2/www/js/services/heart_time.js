/**
 * Created by Administrator on 16-7-2.
 */
angular.module('ufind1.services.heart_time', [])

    .factory('heartTimeService', function () {
        /*历史心率时间*/

        var heart_time = [];

        return {
            serialize: function() {
                localStorage.setItem("heart_time", angular.toJson(heart_time))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("heart_time"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    return heart_time = [];
                } else {
                    heart_time = tmp;
                    return heart_time;
                }
            },
            all: function () {
                return heart_time;
            },
            add: function (ste) {
                heart_time = heart_time.concat(ste);
            },

            del: function (star,stop) {
            }


        };
    });