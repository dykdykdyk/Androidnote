/**
 * Created by Administrator on 16-7-25.
 */
angular.module('ufind1.controllers')
    .controller('height_loginCtrl', function ($scope,$ionicHistory,$state,userService) {
        var users = userService.all();
        $scope.heightOption = {
            itemList: [],
            itemSelected: 130,
            dan_wei:' cm'
        };

        for(var i=30;i<251;i++){
            $scope.heightOption.itemList.push(i);
        }
        ;
//        console.log(".... " +( parseFloat((31.6649).toFixed(1)))  )
//        $scope.heightOption.itemList.push("wallet");
//        $scope.heightOption.itemList.push("bag");
//        $scope.heightOption.itemList.push("computer");
//        $scope.heightOption.itemList.push("mobile");
//        $scope.heightOption.itemList.push("keypairs");
//        $scope.heightOption.itemList.push("car");


        $scope.onClickNext = function(){
            users.height = $scope.heightOption.itemSelected+30;
            userService.serialize();
            $state.go("weight_login");
            console.log("下一步----- " +$scope.heightOption.itemSelected +'  '+userService.all().height);

        }
    });