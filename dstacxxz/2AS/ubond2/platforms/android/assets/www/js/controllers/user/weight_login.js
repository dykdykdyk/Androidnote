/**
 * Created by Administrator on 16-7-25.
 */

angular.module('ufind1.controllers')
    .controller('weight_loginCtrl', function ($scope,$ionicHistory,$state,userService) {
        var users = userService.all();
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.heightOption = {
            itemList: [],
            itemSelected: 50,
            dan_wei:' kg'
        };
        for(var i=10;i<500;i++){
            $scope.heightOption.itemList.push(i);
        }
        $scope.onClickNext = function(){

            users.weight = $scope.heightOption.itemSelected+10;
            userService.serialize();
            $state.go("age_login");
            console.log("下一步----- "+userService.all().weight );
        }
    });