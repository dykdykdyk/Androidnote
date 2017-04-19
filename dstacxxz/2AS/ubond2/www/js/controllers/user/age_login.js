/**
 * Created by Administrator on 16-7-25.
 */
angular.module('ufind1.controllers')
    .controller('age_loginCtrl', function ($scope,$ionicHistory,$state,$translate,userService) {
        var users = userService.all();
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.month = $translate.instant('month_dan');
        $scope.year = $translate.instant('year_dan');
        $scope.heightOption_year = {
            itemList: [],
            monthList:[],
            itemSelected: 50,
            monthSelected:3,
            dan_wei:  $scope.year,
            dan_wei2:  $scope.month,
            title:"自定义参数选择器",
            height:40
        };
        for(var y = 1940;y<2020;y++){
            $scope.heightOption_year.itemList.push(y);
        }
        for(var m = 1;m<=12;m++){
            $scope.heightOption_year.monthList.push(m);
        }

        $scope.onClickNext = function(){
            users.birthYear =   $scope.heightOption_year.itemList[ $scope.heightOption_year.itemSelected];
            users.birthMoth =   $scope.heightOption_year.monthList[ $scope.heightOption_year.monthSelected];
            userService.serialize();
            $state.go("sex_login");
            console.log("下一步----- " +  users.birthYear + "  " +users.birthMoth );
        }
    });