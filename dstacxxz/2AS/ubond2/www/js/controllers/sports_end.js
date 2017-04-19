/**
 * Created by Administrator on 16-8-5.
 */

angular.module('ufind1.controllers')
    .controller('sports_endCtrl', function ($scope, $state,$translate,userService,bleService,decService,connectedService,dialogsManager) {
        var users = userService.all();
        $scope.sports = users.sports;
        $scope.step = $translate.instant('step_date2');
        $scope.setting_ok = $translate.instant('setting_ok');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.heightOption = {
            itemList: [],
            itemSelected:  $scope.sports/1000-1,
            dan_wei:$scope.step
        };
        for(var i=1000;i<=20000;i=i+1000){
            $scope.heightOption.itemList.push(i);
        }
        $scope.showMessage= function (data) {
            dialogsManager.showMessage(data);
        }
        $scope.onClickSave = function(){
            users.sports = $scope.heightOption.itemList[$scope.heightOption.itemSelected];
            userService.serialize();
            var dec = decService.all();
            var currentPlatform = ionic.Platform.platform();
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                if(typeof(dec) != "undefined" & dec.id != "" &connectedService.is_connected){
                    bleService.setOption(dec.id, "cmdSports",users.sports);
                    $scope.showMessage(  $scope.setting_ok);
                    $state.go("main_setting");
                }else{
                    $scope.showMessage($scope.connect_ble);
                }
            }

            console.log("下一步----- " +  users.sports);
        }
    });