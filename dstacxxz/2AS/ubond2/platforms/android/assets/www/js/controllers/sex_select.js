/**
 * Created by Administrator on 16-5-30.
 */
angular.module('ufind1.controllers')
    .controller('sex_selectCtrl', function($scope, $state, $ionicHistory,systemService,userService,$translate) {
        var user_date = userService.all();
        $scope.userSex = user_date.sex;
        console.log("userSex  ---" +$scope.userSex);
        $scope.clientSideList = [
            { text: $translate.instant('sex_1'), value: 1 },
            { text: $translate.instant('sex_0'), value: 0 }
        ];
        $scope.data = {
            clientSide: $scope.userSex
        };
        $scope.serverSideChange = function(item) {
            console.log("text:", item.text, "value:", item.value);
        };
//        选取的值为: {{ data.clientSide }}
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }


//        userSystem.userName = res;
//        userService.serialize();
//        $scope.userName1 = userSystem.userName;
//        console.log("res + " +  $scope.userName1);
//                console.log("res + " +  userService.deserialize.userName);
//                console.log("aaaaa " + JSON.stringify(userService));
//        $scope.userna = userSystem.userName;



//        var system = systemService.all();
        $scope.onClickFinishSex = function () {
//           system.language = $scope.data.choice;
//            systemService.serialize();
            user_date.sex = $scope.data.clientSide
            console.log("$scope.data.clientSide----- + " + $scope.data.clientSide);
            userService.serialize();
            $ionicHistory.goBack();

        }
    });
