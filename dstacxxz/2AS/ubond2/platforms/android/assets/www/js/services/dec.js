/**
 * Created by Administrator on 16-7-4.
 */

/**
 * 当前连接的设备
 * */

angular.module('ufind1.services.dec', [])

    .factory('decService', function() {
        var dev = {
            id:"",
            name:""
        };
        var devSystem;
        return {
            all: function() {
                return devSystem;
            },
            serialize: function() {
                localStorage.setItem("devSystem", angular.toJson(devSystem))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("devSystem"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    devSystem = dev;
                    return devSystem;
                } else {
                    devSystem = tmp;
                    return devSystem;
                }
            }
        }
    });