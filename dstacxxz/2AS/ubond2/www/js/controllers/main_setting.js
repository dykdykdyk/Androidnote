/**
 * Created by Administrator on 16-7-13.
 */
angular.module('ufind1.controllers')

    .controller('main_settingCtrl', function ($rootScope, $scope,$ionicHistory,userService) {
        var currentPlatform = ionic.Platform.platform();
        var userSys = userService.all();
        $scope.cameraimage = userSys.image;
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
    });
