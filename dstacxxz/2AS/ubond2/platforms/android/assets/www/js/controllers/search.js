angular.module('ufind1.controllers')

    .controller('searchCtrl', function ($rootScope,$stateParams, $q, $timeout,$ionicHistory, $scope, $state, bleService,decService, deviceService) {
        $scope.doRefresh = function () {
            $scope.items = [];
            var currentPlatform = ionic.Platform.platform();
            if (currentPlatform == 'win32' || currentPlatform == 'macintel') {
                var peripheral = {
                    id: "C9C3D476-A8FC-D95D-8AC6-999988887777",
                    name: "win32test",
                    imageURI: "",
                    appAlert: true,
                    alertTime: "4S",
                    reconnectAlert: true,
                    itemAlert: true,
                    alertRange : "3",
                    rssi:66
                };

                if (deviceService.get(peripheral.id) === null) {
                        $scope.items = $scope.items.concat(peripheral);
                }

                $scope.$broadcast('scroll.refreshComplete');

            } else {
                bleService.scan([], 15).then(function () {
                    console.log("BLE Scan Finished");
                    $scope.$broadcast('scroll.refreshComplete');
                }, function (error) {
                    console.log("BLE Scan Failed:", error);
                    $scope.$broadcast('scroll.refreshComplete');
                }, function (peripheral) {
//                    if (peripheral.name == "ubond0"|| peripheral.advertising["kCBAdvDataLocalName"] == "ubond0" || peripheral.name == "ubond1"|| peripheral.advertising["kCBAdvDataLocalName"] == "ubond1") {
                    if (peripheral.name == "B2") {
                            var device = {};
                            device.id = peripheral.id;
                            device.rawName = peripheral.name;
                            device.rssi = peripheral.rssi;
                            device.name = "";
                            device.imageURI = "";
                            device.appAlert = true;
                            device.alertTime = "4S";
                            device.reconnectAlert = true;
                            device.itemAlert = false;
                            device.alertRange = "3";
                            $scope.items = $scope.items.concat(device);

                    }
                });
            }
        };
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
//        $scope.userID = $stateParams.userId;
//        console.log("登录的ID："+$scope.userID);
        $scope.loadMore = function () {

        };
        $scope.$on('$ionicView.beforeEnter', function () {
            $scope.doRefresh();
        });

        $scope.onClickedConnect = function (device) {
            $state.go("bond", {
                device: device
            });
        }
    });