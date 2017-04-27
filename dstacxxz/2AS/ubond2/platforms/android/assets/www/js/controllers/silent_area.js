angular.module('ufind1.controllers')

    .controller('silentAreaCtrl', function ($scope, $stateParams,$ionicHistory,$translate,connectedService,bleService,userService,dialogsManager) {

        var currentPlatform = ionic.Platform.platform();
        var sy = userService.all();
        $scope.data = {sms: sy.isSms,
                        call: sy.isCall,
                       chat:sy.isChat,
                       qq:sy.isQq
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

        $scope.onSmsReminder = function () {
            console.log("cmdsms1: " + $scope.data.sms);
            if($scope.data.sms == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption("", "cmdSms", $scope.data.sms ? "1" : "0")
            }
            sy.isSms =  $scope.data.sms;
            userService.serialize();
            console.log("cmdSms: " +   sy.isSms );
        };
        $scope.onCallReminder = function () {
            console.log("cmdcall: " + $scope.data.call);
            if($scope.data.call == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption("", "cmdCall", $scope.data.call ? "1" : "0")
            }
            sy.isCall =  $scope.data.call;
            userService.serialize();
            console.log("cmdSms: " +   sy.isCall);
        };
        $scope.onChatReminder = function () {
            console.log("cmdchat: " + $scope.data.chat);
            if($scope.data.chat == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption("", "cmdChat", $scope.data.chat ? "1" : "0")
            }
            sy.isChat =  $scope.data.chat;
            userService.serialize();
            console.log("cmdchat: " +   sy.isChat);
        };
        $scope.onQQReminder = function () {
            console.log("cmdqq: " + $scope.data.qq);
            if($scope.data.qq == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption("", "cmdQQ", $scope.data.qq ? "1" : "0")
            }
            sy.isQq =  $scope.data.qq;
            userService.serialize();
            console.log("cmdqq: " +   sy.isQq);
        };
        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }
    });
