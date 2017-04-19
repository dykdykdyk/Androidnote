//angular.module('ufind1.controllers')
//
//    .controller('keyCtrl', function ($scope, $state, $stateParams, deviceService, actionService) {
//        $scope.peripheral = deviceService.get($stateParams.deviceId);
//        var keys = [0, 0, 0, 0, 0, 0, 0, 0, 0];
//
//        if (typeof($scope.peripheral.keys) === 'undefined') {
//            $scope.peripheral.keys = keys;
//            $scope.keys = keys;
//        } else {
//            $scope.keys = $scope.peripheral.keys;
//            console.log(JSON.stringify($scope.peripheral.keys));
//        }
//
//        $scope.getKeyActionImage = function (keyId) {
//            return actionService.get($scope.keys[keyId]).img;
//        };
//
//        $scope.onClickKey = function (keyId) {
//            $state.go("action", {
//                deviceId: $stateParams.deviceId,
//                keyId: keyId
//            });
//        };
//    });