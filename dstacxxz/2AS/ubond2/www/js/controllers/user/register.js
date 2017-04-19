///**
// * Created by Administrator on 16-6-15.
// */
//angular.module('ufind1.controllers')
//
//    .controller('registerCtrl', function ($ionicPlatform,$scope,$location,$ionicHistory, $state, $stateParams, userDateService,userService ) {
//        var userSystem = userService.all();
//        console.log( "register--"+JSON.stringify(userSystem));
//        var user_date = userDateService.all();
//
//        $scope.user =
//            {
//                userId:0,
//                username1: '',
//                username: '',
//                password: '',
//                birthYear: userSystem.birthYear,
//                birthMoth: userSystem.birthMoth,
//                sex: userSystem.sex,
//                height: userSystem.height,
//                weight:userSystem.weight,
//                isLogin: false
//            };
//
//        var islog = function(username){
//            console.log("username-----------"+username)
//            for(var i=0;i<user_date.length;i++){
//                if(user_date[i].username2 == username){
//                    console.log("username-----------"+user_date[i].username2)
//                    return false;
//                }
//            }
//        }
////        console.log("sex is" + $scope.userSex);
////        $scope.setSex = function(){
////            if( $scope.user.sex ==1){
////                $scope.text = "男"
////                return $scope.text
////            }else  if( $scope.user.sex ==0){
////                $scope.text = "女"
////                return $scope.text
////            }
////
////        }
////        userSystem.username2 =$scope.user.username;
////        userSystem.password = $scope.user.password ;
////        console.log( "userSystem.password--"+userSystem.username2+userSystem.password )
////        userService.serialize();
////        $scope.user.username = userSystem.username2;
////        console.log( "userSystem2222--"+$scope.user.username )
//
//        $scope.onRegister = function(){
//            userSystem = userService.all();
//            if($scope.user.username ){
//                if(islog($scope.user.username)!=false){
//                    if($scope.user.password){
//                        if($scope.user.birthYear){
//                            if($scope.user.height){
//                                if($scope.user.weight){
//                                    userSystem.userName = "";
//                                    userSystem.username2 = $scope.user.username;
//                                    userSystem.password = $scope.user.password;
////                                userSystem.birthYear = $scope.user.birthYear;
////                                userSystem.birthMoth = $scope.user.birthMoth;
//
//                                    console.log("$scope.user.birthYear--"+$scope.user.birthYear);
//                                    console.log("$scope.user.birthMoth--"+$scope.user.birthMoth);
//                                    console.log(" $scope.user.sex--"+ $scope.user.sex);
//
//                                    userSystem.sex = $scope.user.sex;
//                                    userSystem.userIdd = userSystem.userIdd+1;
//
//                                    userSystem.whoIsLogin = true;
//                                    userService.serialize();
//
//                                    userDateService.add(userSystem);
//                                    userDateService.serialize();
//                                    console.log("userDateService--"+JSON.stringify(userDateService.all()));
//                                    console.log("userService.onregister--"+JSON.stringify(userService.all()));
////                                alert("注册成功");
////                                $state.go("login");
//                                    $state.go("main");
//                                }else{
//                                    alert("体重不能为空");}
//                            }else{
//                                alert("身高不能为空");
//                            }
//                        }else{
//                            alert("年龄不能为空")
//                        }
//                    }else{
//                        alert("密码不能为空");
//                    }
//                }else{
//                    alert("用户名重复");
//                }
//            }else{
//                alert("用户名不能为空");
//            }
//
//        }
//
//
//        $scope.onCancle = function(){
////            var us = userService.all();
////            us.whoIsLogin = false;
////            userService.serialize();
//            $state.go("login");
//        }
//
//    });
