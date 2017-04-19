angular.module('ufind1.controllers', [])

    .controller('settingCtrl', function ($rootScope,$scope,$ionicPopup,$ionicLoading,$ionicHistory,$translate, $state,userService,bleService,decService,dialogsManager,connectedService) {
        var userSys = userService.all()
        var dec = decService.all();
        var currentPlatform = ionic.Platform.platform();
        $scope.cancel = $translate.instant('cancel');
        $scope.del = $translate.instant('del');
        $scope.unbond = $translate.instant('unbond');
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.de_bound_ok = $translate.instant('de_bound_ok');
        $scope.de_bound_er = $translate.instant('de_bound_er');
        $scope.showMessage= function (data) {
            dialogsManager.showMessage(data);
        }
        $scope.onDelBound = function(){
            console.log("解除绑定")
//            $scope.showMessage(  $scope.de_bound_ok)
//            showConfirm();
            if(connectedService.is_connected){
                if (currentPlatform == 'ios' || currentPlatform == 'android') {
                    showConfirm();
                }
            }

        }

        $scope.onGoLogin = function(){
            $state.go("search");
        }
        $scope.onGetOut = function(){
            showConfirm();
//            bleService.isConnected("");
        }
        var showConfirm = function() {
            var confirmPopup = $ionicPopup.confirm({
                title: $scope.unbond,
//                template: '确定退出?',
                cancelText: $scope.cancel, // String (默认: 'Cancel')。一个取消按钮的文字。
                okText: $scope.del// String (默认: 'OK')。OK按钮的文字。
            });
            confirmPopup.then(function(res) {
                if(res) {
                    $ionicLoading.show({
                        template: '<ion-spinner icon="ios"></ion-spinner>',
                        duration: 10 * 1000
                    });
                    bleService.disconnect(dec.id).then(function (result) {
                        $ionicLoading.hide();
                        console.log('解除绑定1...'+ JSON.stringify(result));
                        connectedService.is_connected = false;
                        $rootScope.$broadcast('dec.disconnected','m');
                        dec.id ="",
                            dec.name ="",
                            decService.serialize();
                        console.log('清除蓝牙连接数据...'+ JSON.stringify(decService.all()));
                        $scope.showMessage($scope.de_bound_ok)
                    }, function (err) {
                        $ionicLoading.hide();
                        $scope.showMessage( $scope.de_bound_er);
                        console.log('解除绑定2...'+ JSON.stringify(err));
                    });
                } else {
                    console.log('You are not sure');
                }
            });
        };
    })

    .controller('faqCtrl', function ($scope, $state, faqService) {
        $scope.faqs = faqService.all();
    })

    .controller('detailCtrl', function ($scope, $stateParams, $sce, faqService) {
        $scope.detail = faqService.get($stateParams.deviceId);
        $scope.lastText = $sce.trustAsHtml(faqService.get($stateParams.deviceId).lastText);
    })
    /*久坐提醒*/
    .controller('sedentaryCtrl', function ($scope, $ionicHistory,$translate,connectedService,bleService,userService,decService,dialogsManager) {
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        var currentPlatform = ionic.Platform.platform();
        var sy = userService.all();

        $scope.turn_on = $translate.instant('turn_on');
        $scope.turn_off = $translate.instant('turn_off');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.setting_ok = $translate.instant('setting_ok');

        var device_now = decService.all();

        $scope.data = {
            time:sy.sedentary_time,     //提醒时间
            interval:sy.interval,       //间隔
            sedentary: sy.sedentary,     //开关
            max:30
        };

        $scope.set= {
            time:$scope.data.time
        }
        $scope.onSettingTime = function(){
            $scope.set.time = $scope.data.time
        }

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
        $scope.onSedentarySetting = function () {
            if($scope.data.sedentary == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }

            sy.sedentary =  $scope.data.sedentary;
        };
        $scope.onClickFinish = function(){
            $scope.data_set ={
                time:$scope.set.time,     //提醒时间
                interval:$scope.data.interval,       //间隔
                sedentary: $scope.data.sedentary ? 1 : 0     //开关
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                if(connectedService.is_connected){
                    bleService.setOption(device_now.id, "cmdSedentarySetting", $scope.data_set)
                    $scope.showMessage($scope.setting_ok);
                    $ionicHistory.goBack();
                }else{
                    $scope.showMessage($scope.connect_ble);
                }
            }
            sy.sedentary_time = $scope.data.time
            sy.interval = $scope.data.interval
            sy.sedentary =  $scope.data.sedentary;
            userService.serialize();
            console.log("cmdSedentarySetting: " + JSON.stringify($scope.data_set));

        }

        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }



    })
    /*亮屏设置brightScreenCtrl*/
    .controller('brightScreenCtrl', function ($scope, $ionicHistory,$translate,connectedService,bleService,userService,decService,dialogsManager) {
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        var currentPlatform = ionic.Platform.platform();
        var sy = userService.all();

        $scope.turn_on = $translate.instant('turn_on');
        $scope.turn_off = $translate.instant('turn_off');
        $scope.connect_ble = $translate.instant('connect_ble');

        var device_now = decService.all();
        $scope.data = {screen: sy.bright_screen
        };
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
        $scope.onScreenSetting = function () {
            console.log("cmdScreenSetting: " + $scope.data.screen);
            if($scope.data.screen == true){
                $scope.showMessage($scope.turn_on);
            }else{
                $scope.showMessage($scope.turn_off);
            }
            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                bleService.setOption(device_now.id, "cmdScreenSetting", $scope.data.screen ? "1" : "0")


            }
            sy.bright_screen =  $scope.data.screen;
            userService.serialize();
            console.log("bright_screen: " +   sy.bright_screen );
        };
        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }
    })
    /*运动成绩*/
    .controller('portsGradesCtrl', function ($scope, $state,$translate,userService) {
        var userData = userService.all();

        /*所以体型*/
        $scope.shape_type1 = $translate.instant('shape_type1');
        $scope.shape_type2 = $translate.instant('shape_type2');
        $scope.shape_type3 = $translate.instant('shape_type3');
        $scope.shape_type4 = $translate.instant('shape_type4');
        $scope.today_target_ok = $translate.instant('today_target_ok');
        $scope.today_target_no = $translate.instant('today_target_no');
        $scope.step = $translate.instant('step_date2');

        $scope.cal = userData.totalCalory+'cal'
        /*运动目标*/
        $scope.sports_data = userData.sports
        /*今日步数*/
        $scope.step_data = userData.totalSteps

        if($scope.sports_data >$scope.step_data){
            $scope.today_target =  $scope.today_target_no
        }else{
            $scope.today_target =  $scope.today_target_ok
        }

        /*bmi指数*/
        $scope.bmi =  (userData.weight / ((userData.height/100)*(userData.height/100))).toFixed(2)

        $scope.bmiData ='BMI'+ $scope.bmi
        console.log('BMI = ' +$scope.bmi + ', ' +        $scope.bmiData)
        /*当前体型*/
        if($scope.bmi<18.5){
            $scope.shape_type = $scope.shape_type1;
        }else if($scope.bmi>=18.5 & $scope.bmi< 25){
            $scope.shape_type = $scope.shape_type2;
        }else if($scope.bmi>=25 & $scope.bmi< 28){
            $scope.shape_type = $scope.shape_type3;
        }else if($scope.bmi>=28 ){
            $scope.shape_type = $scope.shape_type4;
        }

        $scope.recommended_step = 6000+ $scope.step


        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }

    })
    /**跌倒报警*/
    .controller('fallAlarmCtrl', function ($scope, $ionicHistory,$translate,connectedService,bleService,userService,decService,dialogsManager) {
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        var currentPlatform = ionic.Platform.platform();
        var sy = userService.all();

        $scope.turn_on = $translate.instant('turn_on');
        $scope.turn_off = $translate.instant('turn_off');
        $scope.connect_ble = $translate.instant('connect_ble');

        $scope.number = $translate.instant('number');
        $scope.message = $translate.instant('message');

        $scope.input_number = $translate.instant('input_number');
        $scope.input_message = $translate.instant('input_message');


        var device_now = decService.all();
        $scope.data = {
            fall: sy.fall_alarm,
            message: sy.message,
            number : sy.number
        };
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
        $scope.setting_ok = $translate.instant('setting_ok');

        $scope.onFallSetting = function () {
            console.log("cmdFallAlarm: " + $scope.data.fall);
        };
        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }

        $scope.onClickFinish = function () {
            $scope.sms = {
                fall:$scope.data.fall ? "1" : "0",
                number:$scope.data.number,
                message: $scope.data.message
            }
            console.log("$scope.sms  " +JSON.stringify($scope.sms))
//            if (currentPlatform == 'ios' || currentPlatform == 'android') {
//                bleService.setOption(device_now.id, "cmdFallAlarm",  $scope.sms)
//            }
            if (connectedService.is_connected) {
                bleService.setOption(device_now.id, "cmdFallAlarm",  $scope.sms)
                sy.fall_alarm =  $scope.data.fall;
                sy.message  = $scope.data.message;
                sy.number =  $scope.data.number;
                userService.serialize();
                $scope.showMessage($scope.setting_ok);
                $ionicHistory.goBack();
            }else{
                $scope.showMessage($scope.connect_ble);
            }

        }

    })
    /*定时心率测量*/
    .controller('timerHeartCtrl', function ($scope,  $ionicHistory,$translate,connectedService,bleService,userService,decService,dialogsManager) {
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        var currentPlatform = ionic.Platform.platform();
        var system = userService.all();

        $scope.turn_on = $translate.instant('turn_on');
        $scope.turn_off = $translate.instant('turn_off');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.setting_ok = $translate.instant('setting_ok');

        var device_now = decService.all();
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

        $scope.text_0 = $translate.instant('text_0');
        $scope.text_15 = $translate.instant('text_15');
        $scope.text_30 = $translate.instant('text_30');
        $scope.text_60 = $translate.instant('text_60');

        $scope.data = {
            choice: system.timer_heart
        };
        console.log("$scope.data.choice 22  " + $scope.data.choice)

        $scope.langs = [
            {
                value: 0,
                text:  $scope.text_0
            },
            {
                value: 15,
                text:  $scope.text_15
            },
            {
                value: 30,
                text: $scope.text_30
            },
            {
                value: 60,
                text: $scope.text_60
            }
        ];


        $scope.onClickFinish = function () {
            console.log("$scope.data.choice  " + $scope.data.choice)

            if (connectedService.is_connected) {
                bleService.setOption(device_now.id, "cmdTimerHeart",  $scope.data.choice)

                system.timer_heart = $scope.data.choice;
                userService.serialize();
                $scope.showMessage($scope.setting_ok);
                $ionicHistory.goBack();
            }else {
                $scope.showMessage($scope.connect_ble);
            }
        }
        $scope.showMessage= function (title) {
            dialogsManager.showMessage(title);
        }
    })



    .controller('aboutCtrl', function ($scope, $state) {

    })

    .controller('areaCtrl', function ($scope, $state) {

    })

    .controller('updateCtrl', function ($scope, $state) {

    });