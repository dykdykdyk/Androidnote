angular.module('ufind1.controllers')

    .controller('silentTimeCtrl', function ($scope, $state, $stateParams, $ionicPopup, $translate, $ionicHistory, decService, systemService, bleService, userService, connectedService, dialogsManager) {

        var system = userService.all();
        var dec = decService.all();
        $scope.setting_ok = $translate.instant('setting_ok');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.once = $translate.instant('once');
        $scope.back = function () {
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        function tab(date1,date2,date3,date4,date5){
            var oDate2 = new Date();
//            var date = oDate2.getFullYear()+"-"+(oDate2.getMonth()+1)+"-"+oDate2.getDate()+" "+date4+":"+date5
            var date = date1+"-"+date2+"-"+date3+" "+date4+":"+date5+":"+ "00"
            console.log("闹钟时间："+date);
            var oDate1 = new Date(date);
            var new_time =  oDate2.getTime();
            var alarm_time = oDate1.getTime();
            console.log("new_time.."+new_time+"   alarm_time.."+alarm_time);
            if(alarm_time < new_time){
                console.log('第一个大');
                return false
            } else {
                console.log('第二个大');
                return true
            }
        }
        function tab1(date1,date2){
            var time1 = date1*60+date2;
            var date = date1+":"+date2
            console.log("闹钟时间："+date+"  "+time1);
            var oDate1 = new Date();
            var time2 = oDate1.getMinutes() + oDate1.getHours()*60
            if(time1 < time2){
                console.log('第一个大');
                return false
            } else {
                console.log('第二个大');
                return true
            }
        }
        var parseWeekDay = function (weekday) {
            var str = "";
            console.log(weekday);
            if (weekday == 0) return $scope.once;
            if (weekday == 127) return $translate.instant('everyday');
            if (weekday & 1) str += $translate.instant('sunday');
            if (weekday & 2) str += $translate.instant('monday');
            if (weekday & 4) str += $translate.instant('tuesday');
            if (weekday & 8) str += $translate.instant('wednesday');
            if (weekday & 16) str += $translate.instant('thursday');
            if (weekday & 32) str += $translate.instant('friday');
            if (weekday & 64) str += $translate.instant('saturday');
            return str;
        };
        function prependZero(data, num) {
            return data >= num ? data : "0" + data;
        }
        $scope.date = {
            timeText1: prependZero(system.silentHour1, 10) + ":" + prependZero(system.silentMinute1, 10) ,
            weekText1: parseWeekDay(system.silentWeekDay1),
            timeText2: prependZero(system.silentHour2, 10) + ":" + prependZero(system.silentMinute2, 10) ,
            weekText2: parseWeekDay(system.silentWeekDay2),
            timeText3: prependZero(system.silentHour3, 10) + ":" + prependZero(system.silentMinute3, 10),
            weekText3: parseWeekDay(system.silentWeekDay3),
            alarm1: system.alarm1,
            alarm2: system.alarm2,
            alarm3: system.alarm3
        }

        if($scope.date.weekText1 == $scope.once){
                if($scope.date.alarm1){
                    $scope.date.alarm1 = tab(system.silentYear1,system.silentMonth1,system.silentDay1,system.silentHour1,system.silentMinute1);
                    console.log(" $scope.date.alarm1...." + $scope.date.alarm1)
                }
        }
        if($scope.date.weekText2 == $scope.once){
            if($scope.date.alarm2) {
                $scope.date.alarm2 = tab(system.silentYear2, system.silentMonth2, system.silentDay2, system.silentHour2, system.silentMinute2);
            }
        }
        if($scope.date.weekText3 == $scope.once){
            if($scope.date.alarm3){
                $scope.date.alarm3 = tab(system.silentYear3,system.silentMonth3,system.silentDay3,system.silentHour3,system.silentMinute3);

            }
        }
        var myDate2 = function (time) {
            var my = new Date()
            var date = new Date(my.getTime()+time*24*60*60*1000)
            var y = date.getFullYear();
            var m = date.getMonth() +1;
            var d = date.getDate();
            var h = date.getHours();
            var mi = date.getMinutes();
            return [y,m,d,h,mi];
        }
        var myDate = function () {
            var date = new Date()
            var y = date.getFullYear();
            var m = date.getMonth() +1;
            var d = date.getDate();
            var h = date.getHours();
            var mi = date.getMinutes();
            return [y,m,d,h,mi];
        }

        $scope.showMessage = function (data) {
            dialogsManager.showMessage(data);
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
        $scope.onGoToAlarm = function (index) {
            $state.go("alarm_setting1",
                {
                    alarmId: index
                }
            );
            console.log("onGoToAlarm... " + index)
        }
        /**
         *
         * */
        $scope.onClickAlarm = function (date) {
//            if(system.silentWeekDay1 == 0){
//                if(tab1(system.silentHour1,system.silentMinute1)){
//                    $scope.y = myDate2(0)[0];
//                    $scope.m = myDate2(0)[1];
//                    $scope.d = myDate2(0)[2];
//                }else{
//                    $scope.y = myDate2(1)[0];
//                    $scope.m = myDate2(1)[1];
//                    $scope.d = myDate2(1)[2];
//                }
//            }else{
//                $scope.y = myDate2(0)[0];
//                $scope.m = myDate2(0)[1];
//                $scope.d = myDate2(0)[2];
//            }
//            if($scope.date.alarm1){
//                $scope.alarm_time1 = {
//                    year1:$scope.y,
//                    month1:$scope.m,
//                    day1:$scope.d,
//                    hour1: system.silentHour1,
//                    minute1: system.silentMinute1,
//                    weekday1: system.silentWeekDay1,
//                    isAlarm1:1
//                }
//                console.log('true/$scope.alarm_time1...'+ JSON.stringify($scope.alarm_time1));
////                bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm_time1);
//            }else{
//                $scope.alarm_time1 = {
//                    year1:$scope.y,
//                    month1:$scope.m,
//                    day1:$scope.d,
//                    hour1: system.silentHour1,
//                    minute1: system.silentMinute1,
//                    weekday1: system.silentWeekDay1,
//                    isAlarm1:0
//                }
//                console.log('false/$scope.alarm_time1...'+ JSON.stringify($scope.alarm_time1));
////                bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm_time1);
//            }
//            system.silentYear1 = $scope.y;
//            system.silentMonth1 = $scope.m;
//            system.silentDay1 = $scope.d;
//            system.alarm1 = $scope.date.alarm1;
//            userService.serialize()
            console.log("onClickAlarm.... " + date)
            if (typeof(dec) != "undefined" & dec.id != "") {
                if (connectedService.is_connected) {
                    switch (date) {
                        case 1:
                            if(system.silentWeekDay1 == 0){
                                if(tab1(system.silentHour1,system.silentMinute1)){
                                    $scope.y = myDate2(0)[0];
                                    $scope.m = myDate2(0)[1];
                                    $scope.d = myDate2(0)[2];
                                }else{
                                    $scope.y = myDate2(1)[0];
                                    $scope.m = myDate2(1)[1];
                                    $scope.d = myDate2(1)[2];
                                }
                            }else{
                                $scope.y = myDate2(0)[0];
                                $scope.m = myDate2(0)[1];
                                $scope.d = myDate2(0)[2];
                            }
                            if($scope.date.alarm1){
                                $scope.alarm_time1 = {
                                    year1:$scope.y,
                                    month1:$scope.m,
                                    day1:$scope.d,
                                    hour1: system.silentHour1,
                                    minute1: system.silentMinute1,
                                    weekday1: system.silentWeekDay1,
                                    isAlarm1:1
                                }
                                console.log('true/$scope.alarm_time1...'+ JSON.stringify($scope.alarm_time1));
                                bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm_time1);
                            }else{
                                $scope.alarm_time1 = {
                                    year1:$scope.y,
                                    month1:$scope.m,
                                    day1:$scope.d,
                                    hour1: system.silentHour1,
                                    minute1: system.silentMinute1,
                                    weekday1: system.silentWeekDay1,
                                    isAlarm1:0
                                }
                                console.log('false/$scope.alarm_time1...'+ JSON.stringify($scope.alarm_time1));
                                bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm_time1);
                            }
                            system.silentYear1 = $scope.y;
                            system.silentMonth1 = $scope.m;
                            system.silentDay1 = $scope.d;
                            system.alarm1 = $scope.date.alarm1;
                            userService.serialize();
                            break;
                        case 2:
                            if(system.silentWeekDay2 == 0){
                                if(tab1(system.silentHour2, system.silentMinute2)){
                                    $scope.y = myDate2(0)[0];
                                    $scope.m = myDate2(0)[1];
                                    $scope.d = myDate2(0)[2];
                                }else{
                                    $scope.y = myDate2(1)[0];
                                    $scope.m = myDate2(1)[1];
                                    $scope.d = myDate2(1)[2];
                                }
                            }else{
                                $scope.y = myDate2(0)[0];
                                $scope.m = myDate2(0)[1];
                                $scope.d = myDate2(0)[2];
                            }
                            if($scope.date.alarm2){
                                $scope.alarm_time2 = {
                                    year2:$scope.y,
                                    month2:$scope.m,
                                    day2:$scope.d,
                                    hour2: system.silentHour2,
                                    minute2: system.silentMinute2,
                                    weekday2: system.silentWeekDay2,
                                    isAlarm2:1
                                }
                                console.log('true/$scope.alarm_time2...'+ JSON.stringify($scope.alarm_time2));
                                bleService.setOption(dec.id, "cmdSilentWeekDay2", $scope.alarm_time2);
                            }else{
                                $scope.alarm_time2 = {
                                    year2:$scope.y,
                                    month2:$scope.m,
                                    day2:$scope.d,
                                    hour2: system.silentHour2,
                                    minute2: system.silentMinute2,
                                    weekday2: system.silentWeekDay2,
                                    isAlarm2:0
                                }
                                console.log('false/$scope.alarm_time2...'+ JSON.stringify($scope.alarm_time2));
                                bleService.setOption(dec.id, "cmdSilentWeekDay2", $scope.alarm_time2);
                            }
                            system.silentYear2 = $scope.y;
                            system.silentMonth2 = $scope.m;
                            system.silentDay2 = $scope.d;
                            system.alarm2 = $scope.date.alarm2;
                            userService.serialize();
                            break;
                        case 3:
                            if(system.silentWeekDay3 == 0){
                                if(tab1(system.silentHour3,system.silentMinute3)){
                                    $scope.y = myDate2(0)[0];
                                    $scope.m = myDate2(0)[1];
                                    $scope.d = myDate2(0)[2];
                                }else{
                                    $scope.y = myDate2(1)[0];
                                    $scope.m = myDate2(1)[1];
                                    $scope.d = myDate2(1)[2];
                                }
                            }else{
                                $scope.y = myDate2(0)[0];
                                $scope.m = myDate2(0)[1];
                                $scope.d = myDate2(0)[2];
                            }
                            if($scope.date.alarm3){
                                $scope.alarm_time3 = {
                                    year3:$scope.y,
                                    month3:$scope.m,
                                    day3:$scope.d,
                                    hour3: system.silentHour3,
                                    minute3: system.silentMinute3,
                                    weekday3: system.silentWeekDay3,
                                    isAlarm3:1
                                }
                                console.log('true/$scope.alarm_time3...'+ JSON.stringify($scope.alarm_time3));
                                bleService.setOption(dec.id, "cmdSilentWeekDay3", $scope.alarm_time3);
                            }else{
                                $scope.alarm_time3 = {
                                    year3:$scope.y,
                                    month3:$scope.m,
                                    day3:$scope.d,
                                    hour3: system.silentHour3,
                                    minute3: system.silentMinute3,
                                    weekday3: system.silentWeekDay3,
                                    isAlarm3:0
                                }
                                console.log('false/$scope.alarm_time3...'+ JSON.stringify($scope.alarm_time3));
                                bleService.setOption(dec.id, "cmdSilentWeekDay3", $scope.alarm_time3);
                            }
                            system.silentYear3 = $scope.y;
                            system.silentMonth3 = $scope.m;
                            system.silentDay3 = $scope.d;
                            system.alarm3 = $scope.date.alarm3;
                            userService.serialize();
                            break;
                    }
//                    $scope.showMessage($scope.setting_ok);
                } else {
                    $scope.showMessage($scope.connect_ble);
                }
            }else{
                $scope.showMessage($scope.connect_ble);
            }
        }

//        $scope.settingsList = [
//            { text: "Wireless", checked: true }
//        ];
//        var userweek = userService.all();
////        var userweek = userDateService.get(user_date.userIdd);
//        var dec = decService.all();
//        var parseWeekDay = function (weekday) {
//            var str = "";
//            console.log(weekday);
//            if (weekday == 127) return $translate.instant('everyday');
//            if (weekday & 1) str += $translate.instant('sunday');
//            if (weekday & 2) str += $translate.instant('monday');
//            if (weekday & 4) str += $translate.instant('tuesday');
//            if (weekday & 8) str += $translate.instant('wednesday');
//            if (weekday & 16) str += $translate.instant('thursday');
//            if (weekday & 32) str += $translate.instant('friday');
//            if (weekday & 64) str += $translate.instant('saturday');
//            return str;
//        };
//
//        $scope.weekDay1 = parseWeekDay(userweek.silentWeekDay1);
//
//        $scope.weekDay2 = parseWeekDay(userweek.silentWeekDay2);
//        $scope.weekDay3 = parseWeekDay(userweek.silentWeekDay3);
////        $scope.weekDay1 = parseWeekDay(system.silentWeekDay1);
////        $scope.weekDay2 = parseWeekDay(system.silentWeekDay2);
////        $scope.weekDay3 = parseWeekDay(system.silentWeekDay3);
//        $scope.back = function(){
//            console.log("返回上一页");
//            $ionicHistory.goBack();
//        }
//        $scope.weekPickerObject1 = {
//            titleLabel: $translate.instant('silent_time_weekPickerTitle') + "1",
//            closeLabel: $translate.instant('cancel'),
//            setLabel: $translate.instant('ok'),
//            setButtonType: 'button-positive',
//            closeButtonType: 'button-stable',
//            callback: function (weekday) {
//                if (typeof(weekday) === 'undefined') {
//                    console.log('Weekday not selected');
//                } else {
//                    $scope.weekDay1 = parseWeekDay(weekday);
//                    system.silentWeekDay1 = weekday;
//                    userweek.silentWeekDay1 = weekday;
//                    userService.serialize();
////                    userDateService.update(userweek);
////                    userDateService.serialize();
//                    $scope.alarm1 = {
//                        hour1: userweek.silentHour1,
//                        minute1: userweek.silentMinute1,
//                        weekday1: weekday
//                    }
//
//					if (angular.isDefined(bleService.setOption)) {
//                        if(connectedService.is_connected){
//                        if(typeof(dec) != "undefined" & dec.id != ""){
////                                bleService.setOption(dec.id , "cmdSilentHour1",userweek.silentHour1);
////                                bleService.setOption(dec.id , "cmdSilentMinute1",userweek.silentMinute1);
//                                bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm1);
//
//                             $scope.showMessage($scope.setting_ok);}
//                        }else{
//                            $scope.showMessage($scope.connect_ble);
//                        }
//                	}
//                    systemService.serialize();
//                }
//            }
//        };
//
//        $scope.weekPickerObject2 = {
//            titleLabel: $translate.instant('silent_time_weekPickerTitle') + "2",
//            closeLabel: $translate.instant('cancel'),
//            setLabel: $translate.instant('ok'),
//            setButtonType: 'button-positive',
//            closeButtonType: 'button-stable',
//            callback: function (weekday) {
//                if (typeof(weekday) === 'undefined') {
//                    console.log('Weekday not selected');
//                } else {
//                    $scope.weekDay2 = parseWeekDay(weekday);
//                    system.silentWeekDay2 = weekday;
//                    userweek.silentWeekDay2 = weekday;
//                    userService.serialize();
////                    userDateService.update(userweek);
////                    userDateService.serialize();
//                    $scope.alarm2 = {
//                        hour2: userweek.silentHour2,
//                        minute2: userweek.silentMinute2,
//                        weekday2: weekday
//                    }
//					if (angular.isDefined(bleService.setOption)) {
//                        if(connectedService.is_connected){
//                        if(typeof(dec) != "undefined" & dec.id != ""){
////                            bleService.setOption(dec.id , "cmdSilentHour2",userweek.silentHour2);
////                            bleService.setOption(dec.id , "cmdSilentMinute2",userweek.silentMinute2);
//                            bleService.setOption(dec.id, "cmdSilentWeekDay2", $scope.alarm2);
//                            $scope.showMessage($scope.setting_ok);
//                        }
//                    }else{
//                        $scope.showMessage($scope.connect_ble);
//                    }
//                	}
//
//                    systemService.serialize();
//                }
//            }
//        };
//        $scope.weekPickerObject3 = {
//            titleLabel: $translate.instant('silent_time_weekPickerTitle') + "3",
//            closeLabel: $translate.instant('cancel'),
//            setLabel: $translate.instant('ok'),
//            setButtonType: 'button-positive',
//            closeButtonType: 'button-stable',
//            callback: function (weekday) {
//                if (typeof(weekday) === 'undefined') {
//                    console.log('Weekday not selected');
//                } else {
//                    $scope.weekDay3 = parseWeekDay(weekday);
//                    system.silentWeekDay3 = weekday;
//                    userweek.silentWeekDay3 = weekday;
////                    userDateService.update(userweek);
////                    userDateService.serialize();
//                    $scope.alarm3 = {
//                        hour3: userweek.silentHour3,
//                        minute3: userweek.silentMinute3,
//                        weekday3: weekday
//                    }
//                    userService.serialize();
//					if (angular.isDefined(bleService.setOption)) {
//                        if(connectedService.is_connected){
//                            if(typeof(dec) != "undefined" & dec.id != ""){
////                                bleService.setOption(dec.id , "cmdSilentHour3",userweek.silentHour3);
////                                bleService.setOption(dec.id , "cmdSilentMinute3",userweek.silentMinute3);
//                                bleService.setOption(dec.id , "cmdSilentWeekDay3",  $scope.alarm3);
//                                $scope.showMessage($scope.setting_ok);
//                            }
//                        }else{
//                            $scope.showMessage($scope.connect_ble);
//                        }
//
//                	}
//
//                    systemService.serialize();
//                }
//            }
//        };

//        $scope.onClickSilentTime = function () {
//            if (angular.isDefined(bleService.setOption)) {
//            	console.log("cmdSilentTime: " + $scope.system.silentTime);
//                bleService.setOption("", "cmdSilentTime", $scope.system.silentTime ? "1" : "0")
//            }
//
//			system.silentTime = $scope.system.silentTime;
//            systemService.serialize();
//        };
        });