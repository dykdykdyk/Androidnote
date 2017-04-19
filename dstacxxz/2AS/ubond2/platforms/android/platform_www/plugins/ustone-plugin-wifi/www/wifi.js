cordova.define("ustone-plugin-wifi.WifiJs", function(require, exports, module) {
    var argscheck = require('cordova/argscheck');
    var utils = require("cordova/utils");
    var exec = require("cordova/exec");
    var running = false;
    var listeners = [];
    var networks = null;

    var AccessPoint = function (BSSID, SSID, level) {
        this.BSSID = BSSID;
        this.SSID = SSID;
        this.level = level;
    };

    function startScan() {
        exec(function (res) {
            var tempListeners = listeners.slice(0);
            networks = res.map(function (r) {
                return new AccessPoint(r.BSSID, r.SSID, r.level);
            });
            for (var i = 0, l = tempListeners.length; i < l; i++) {
                tempListeners[i].win(networks);
            }
        }, function (e) {
            var tempListeners = listeners.slice(0);
            for (var i = 0, l = tempListeners.length; i < l; i++) {
                tempListeners[i].fail(e);
            }
        }, "WifiNative", "startScan", []);
        running = true;
    }

    function stopScan() {
        exec(null, null, "WifiNative", "stopScan", []);
        running = false;
    }

    function createCallbackPair(win, fail) {
        return {win: win, fail: fail};
    }

    function removeListeners(l) {
        var idx = listeners.indexOf(l);
        if (idx > -1) {
            listeners.splice(idx, 1);
            if (listeners.length === 0) {
                stopScan();
            }
        }
    }

    var WifiJs = {
        getScanResults: function (successCallback, errorCallback) {
            var p;
            var win = function (a) {
                removeListeners(p);
                successCallback(a);
            };
            var fail = function (e) {
                removeListeners(p);
                errorCallback && errorCallback(e);
            };

            p = createCallbackPair(win, fail);
            listeners.push(p);

            if (!running) {
                startScan();
            }
        },
        getConfiguredNetworks: function (successCallback, errorCallback) {
            exec(function (res) {
                networks = res.map(function (r) {
                    return new AccessPoint(r.BSSID, r.SSID, r.level);
                });
                successCallback(networks);
            }, function (e) {
                errorCallback(e);
            }, "WifiNative", "getConfiguredNetworks", []);
        }
    };

    module.exports = WifiJs;
});
