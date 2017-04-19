/**
 * Created by Administrator on 17-2-11.
 */
angular.module('ufind1.controllers')

    .controller('lostSetCtrl', function ($scope, $stateParams,$ionicHistory,$translate,connectedService,bleService,userService,decService,dialogsManager) {

        var currentPlatform = ionic.Platform.platform();
        var sy = userService.all();
        //连接的蓝牙
        var device_now = decService.all();
        $scope.data = {sms: sy.lost_setting
        };
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.turn_on = $translate.instant('turn_on');
        $scope.turn_off = $translate.instant('turn_off');
        $scope.connect_ble = $translate.instant('connect_ble');

        if(connectedService.is_connected){
            $scope.isShow = false;
        }else{
            $scope.isShow = true;
        }
        $scope.onConnect = function(){
            if(!connectedService.is_connected){
                $scope.isShow = true;
                $scope.showMessage($scope.connect_ble);
            }else{
                $scope.isShow = false;
            }
        }

        $scope.onLostSetting = function () {
            console.log("cmdsms1: " + $scope.data.sms);
            if($scope.data.sms == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption(device_now.id, "cmdLostSetting", $scope.data.sms ? "1" : "0")
            }
            sy.lost_setting =  $scope.data.sms;
            userService.serialize();
            console.log("lost_setting: " +   sy.lost_setting );
        };

        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }
    });
