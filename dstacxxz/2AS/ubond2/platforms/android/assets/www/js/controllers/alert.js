angular.module('ufind1.controllers')

    .controller('alertCtrl', function ($scope, $stateParams, deviceService,$ionicHistory,$translate, bleService,decService, userService,dialogsManager,connectedService) {
        var device = deviceService.get($stateParams.deviceId);
        var currentPlatform = ionic.Platform.platform();
        $scope.device = device;

        var data_time = function(){
            var myDate = new Date()
//            myDate.getYear();        //获取当前年份(2位)
//            myDate.getFullYear();    //获取完整的年份(4位,1970-????)
//            myDate.getMonth();       //获取当前月份(0-11,0代表1月)
//            myDate.getDate();        //获取当前日(1-31)
//            myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
//            myDate.getTime();        //获取当前时间(从1970.1.1开始的毫秒数)
//            myDate.getHours();       //获取当前小时数(0-23)
//            myDate.getMinutes();     //获取当前分钟数(0-59)
//            myDate.getSeconds();     //获取当前秒数(0-59)
//            myDate.getMilliseconds();    //获取当前毫秒数(0-999)
//            myDate.toLocaleDateString();     //获取当前日期

            return myDate.getFullYear()+"-"+(myDate.getMonth()+1)+"-"+myDate.getDate()+" "+myDate.getHours()+":"+myDate.getMinutes();
        }
        $scope.date = {
            time:data_time()
        }
        console.log("data_time--------" + $scope.date.time);
        var user = userService.all();
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
//        $scope.setting_ok = $translate.instant('setting_ok');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.showMessage= function (data) {
            dialogsManager.showMessage(data);
        }
        $scope.setTime = function(){
            var dec = decService.all()
//            $scope.showMessage();
//            console.log("同步时间设置")
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                if(connectedService.is_connected){
                    if (typeof(dec) != 'undefined'& dec.id!="" ) {
                        console.log("设置时间");
                        bleService.setOption(dec.id, "cmdTimeSetting", 1).then(function (result) {
                        }, function (result) {
                            console.log("回调1----------" + JSON.stringify(result));
                        }, function (result) {
                            console.log("回调2--------" + JSON.stringify(result));
                        })
                        $scope.showMessage($scope.time_setting)
                }}else{
                    $scope.showMessage($scope.connect_ble)
                }
            }
        }
        $scope.time_setting = $translate.instant('time_setting');
    });
