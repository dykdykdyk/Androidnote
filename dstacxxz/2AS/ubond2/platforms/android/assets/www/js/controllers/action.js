//angular.module('ufind1.controllers')
//
//    .controller('actionCtrl', function ($scope, $state, $stateParams, actionService, deviceService) {
//        $scope.actions = actionService.all();
//        var deviceId = $stateParams.deviceId;
//        var keyId = $stateParams.keyId;
//
//        $scope.onClickAction = function (actionId) {
//            var device = deviceService.get(deviceId);
//            device.keys[keyId] = actionId;
//            $state.go("key", {
//                deviceId: deviceId
//            }, {
//                reload: true
//            });
//        };
//    });
