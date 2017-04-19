//angular.module('ufind1.controllers')
//
//    .controller('wifiCtrl', function ($scope, $stateParams, $ionicLoading,
//                                      $ionicHistory, systemService, bleService) {
//
//        $scope.data = {
//            choice: ""
//        };
//
//        console.log("wifi id: " + JSON.stringify($stateParams));
//        switch ($stateParams.id) {
//            case "0":
//                $scope.silent_area = "家";
//                break;
//            case "1":
//                $scope.silent_area = "公司";
//                break;
//            case "2":
//                $scope.silent_area = "其它";
//                break;
//            default:
//                $scope.silent_area = "";
//        }
//
//        $scope.show = function() {
//            $ionicLoading.show({
//                template: '<ion-spinner icon="ios"></ion-spinner>'
//            });
//        };
//
//        $scope.hide = function(){
//            $ionicLoading.hide();
//        };
//
//        $scope.show();
//
//        var successCallback = function (res) {
//            console.log(JSON.stringify(res));
//            $scope.hide();
//
//            for (var i=0; i < res.length; i++) {
//                res[i].SSID = res[i].SSID.replace(/\"/g, "");
//            }
//
//            $scope.aps = res;
//        };
//
//        var errorCallback = function (err) {
//            $scope.hide();
//            console.log(JSON.stringify(err));
//        };
//
//        if (typeof(cordova) != 'undefined') {
//            var plugin = cordova.require('ustone-plugin-wifi.WifiJs');
//            plugin.getConfiguredNetworks(successCallback, errorCallback);
//        }
//
//        $scope.onClickFinishWifi = function() {
//            var system= systemService.all();
//            switch ($stateParams.id) {
//                case "0":
//                    system.silentWifi1 = $scope.data.choice;
//                    console.log("select silent WIFI1: " + $scope.data.choice);
//                    bleService.setOption(null, "cmdSilentWifi1", system.silentWifi1);
//                    break;
//                case "1":
//                    system.silentWifi2 = $scope.data.choice;
//                    console.log("select silent WIFI2: " + $scope.data.choice);
//                    bleService.setOption(null, "cmdSilentWifi2", system.silentWifi2);
//                    break;
//                case "2":
//                    system.silentWifi3 = $scope.data.choice;
//                    console.log("select silent WIFI3: " + $scope.data.choice);
//                    bleService.setOption(null, "cmdSilentWifi3", system.silentWifi3);
//                    break;
//                default:
//                    console.log("select silent WIFI error!");
//            }
//
//            systemService.serialize();
//            $ionicHistory.goBack();
//        }
//    });
