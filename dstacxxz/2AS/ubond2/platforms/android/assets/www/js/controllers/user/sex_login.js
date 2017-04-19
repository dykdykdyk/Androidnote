/**
 * Created by Administrator on 16-7-25.
 */
angular.module('ufind1.controllers')
    .controller('sex_loginCtrl', function ($scope,userService,$state,$ionicHistory, $translate,dialogsManager) {
        var user  =userService.all();
        $scope.sex = user.sex;
        console.log("user.sex;----- " + $scope.sex);
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        var img_change = function (a){
            if(a == 1){
                $scope.sex_img1 = "img/sex_1_0.png";
                $scope.sex_img0 = "img/sex_0_1.png";
                $scope.foant_color_b = "#FFF"
                $scope.foant_color_g = "#025B99"
            }else{
                $scope.sex_img1 = "img/sex_1_1.png";
                $scope.sex_img0 = "img/sex_0_0.png";
                $scope.foant_color_b = "#025B99"
                $scope.foant_color_g = "#FFF"
            }
        }
        img_change($scope.sex);
//        sex_1:'男',
//        sex_0:'女',
        $scope.sex_1 = $translate.instant('sex_1');
        $scope.sex_0 = $translate.instant('sex_0');

        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }
        $scope.onClickSex1 = function () {
            $scope.sex = 1;
            console.log("onClickSex1----- " + $scope.sex);
            img_change($scope.sex);
//            $scope.showMessage( $scope.sex_1);
        }
        $scope.onClickSex0 = function () {
            $scope.sex = 0;
            console.log("onClickSex0----- " + $scope.sex);
            img_change($scope.sex);
//            $scope.showMessage( $scope.sex_0);
        }
        $scope.onClickNext = function(){
            console.log("onClickNext----- " + $scope.sex);
            user.sex = $scope.sex;
            userService.serialize();
            console.log("下一步----- " + userService.all().sex);
            $state.go("search");
        }
    });
