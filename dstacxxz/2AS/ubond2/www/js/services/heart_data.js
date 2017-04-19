/**
 * Created by Administrator on 16-7-2.
 */
angular.module('ufind1.services.heart_data', [])

    .factory('heartService', function () {
        /*历史心率*/

        var heart_data = [];

        return {
            serialize: function() {
                localStorage.setItem("heart_data", angular.toJson(heart_data))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("heart_data"));
                if (typeof(tmp) === 'undefined' || tmp === null) {

                    return heart_data = [];
                } else {
                    heart_data = tmp;
                    return heart_data;
                }
            },
            all: function () {
                return heart_data;
            },
            add: function (ste) {
                heart_data = heart_data.concat(ste);
            },

            del: function (star,stop) {
            }


        };
    });