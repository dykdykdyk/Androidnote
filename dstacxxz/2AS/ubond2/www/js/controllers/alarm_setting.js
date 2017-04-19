/**
 * Created by Administrator on 16-9-17.
 */
angular.module('ufind1.controllers')

    .controller('alarmCtrl', function ($scope, $stateParams,$state,$ionicActionSheet,$ionicPopup,$translate, $ionicHistory, decService, userDateService, bleService, userService, connectedService, dialogsManager) {

        var alarmId = $stateParams.alarmId;
        console.log("设置的闹钟....." + alarmId + "/");
        $scope.setting_ok = $translate.instant('setting_ok');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.once = $translate.instant('once');
        $scope.custom = $translate.instant('custom');
        $scope.everyday = $translate.instant('everyday');
        $scope.oneFive = $translate.instant('oneFive');

        var userDate = userService.all();
        var dec = decService.all();
        var hour = 0;
        var minute = 0;
        var getWeek = 0;
        function initDate(date) {
            console.log('date....' + date)
            date = parseInt(date)
            switch (date) {
                case 1:
                    hour = userDate.silentHour1;
                    minute = userDate.silentMinute1;
                    getWeek = userDate.silentWeekDay1;
                    break;
                case 2:
                    hour = userDate.silentHour2;
                    minute = userDate.silentMinute2;
                    getWeek = userDate.silentWeekDay2;
                    break;
                case 3:
                    hour = userDate.silentHour3;
                    minute = userDate.silentMinute3;
                    getWeek = userDate.silentWeekDay3;
                    break;
            }
        }
        initDate(alarmId);
        console.log("silentWeekDay1" + userDate.silentHour1 + "/" + userDate.silentHour2 + "/" + userDate.silentWeekDay3)
        console.log("hour..." + hour + " minute..." + minute + "day..." + getWeek)
        var parseWeekDay = function (weekday) {
            var str = "";
            console.log(weekday);
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
        if(getWeek == 0){
            $scope.weekDay3 = $scope.once;
        }else{
            $scope.weekDay3 = parseWeekDay(getWeek);
        }

        $scope.back = function () {
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.month = $translate.instant('minute_dan');
        $scope.year = $translate.instant('hours_dan');
        var myDate = function (time) {
            var my = new Date()
            var date = new Date(my.getTime()+time*24*60*60*1000)
            var y = date.getFullYear();
            var m = date.getMonth() +1;
            var d = date.getDate();
            var h = date.getHours();
            var mi = date.getMinutes();
            return [y,m,d,h,mi];
        }
        console.log("$scope.hour..." + hour + "   $scope.minute..." + minute + "$scope.day " + getWeek)
        $scope.alarm_setting1 = {
            itemList: [],
            monthList: [],
            itemSelected: hour,
            monthSelected: minute,
            dan_wei: $scope.year,
            dan_wei2: $scope.month,
            title: "自定义参数选择器",
            height: 60
        };
        for (var y = 0; y < 24; y++) {
            $scope.alarm_setting1.itemList.push(y);
        }
        for (var m = 0; m < 60; m++) {
            $scope.alarm_setting1.monthList.push(m);
        }
        $scope.weekPickerObject3 = {
            titleLabel: $translate.instant('silent_time_weekPickerTitle') + "" + alarmId,
            closeLabel: $translate.instant('cancel'),
            setLabel: $translate.instant('ok'),
            setButtonType: 'button-positive',
            closeButtonType: 'button-stable',
            callback: function (weekday) {
                if (typeof(weekday) === 'undefined') {
                    console.log('Weekday not selected');
                } else {
                    $scope.weekDay3 = parseWeekDay(weekday);
                    var a = parseInt(alarmId);
                    switch (a) {
                        case 1:
                            userDate.silentWeekDay1 = weekday;
                            break;
                        case 2:
                            userDate.silentWeekDay2 = weekday;
                            break;
                        case 3:
                            userDate.silentWeekDay3 = weekday;
                            break;
                    }
                    getWeek = weekday;
                    userService.serialize();
                }
            }
        };
        $scope.onFlagsDay = function(){
            $ionicActionSheet.show({
                buttons: [
                    {
//                        text: '<i class="icon ion-calendar"></i> ' + $scope.once
//                        text:  '<b style="text-align: center">' +$scope.once+ '</b>'
                        text:  $scope.once
                    },
                    {
//                        text: '<i class="icon ion-calendar"></i> ' + $scope.everyday
                        text: $scope.everyday
                    },
                    {
//                        text: '<i class="icon ion-calendar"></i> ' + $scope.oneFive
                        text: $scope.oneFive
                    },
                    {
//                        text: '<i class="icon ion-calendar"></i>' + $scope.custom
                        text: $scope.custom
                    }
                ],
                cancelText: 'Cancel',
                cancel: function () {
                    console.log('CANCELLED');
                },
                buttonClicked: function (index) {
                    console.log('BUTTON CLICKED', index);
                    if (index == 0) {
                        $scope.weekDay3 = $scope.once
                        getWeek= 0;
                    }else if(index == 1){
                        $scope.weekDay3 = parseWeekDay(127)
                        getWeek= 127;
                    } else if(index == 2){
                        $scope.weekDay3 = parseWeekDay(62);
                        getWeek= 62;
                    }
                    else if (index == 3) {
                        $scope.checked = {
                            sunday: false,
                            monday: false,
                            tuesday: false,
                            wednesday: false,
                            thursday: false,
                            friday: false,
                            saturday: false
                        };
                        $scope.titleLabel = $translate.instant('silent_time_weekPickerTitle') + alarmId;
                        $scope.setLabel = $translate.instant('ok');
                        $scope.closeLabel = $translate.instant('cancel');
                        $scope.setButtonType = 'button-positive';
                        $scope.closeButtonType =  'button-stable';
                        var myPopup = $ionicPopup.show({
                            templateUrl: 'templates/weekpicker.html',
                            title: $scope.titleLabel,
                            scope: $scope,
                            buttons: [{
                                text: $scope.closeLabel,
                                type: $scope.closeButtonType,
                                onTap: function(e) {
                                    return null;
                                }
                            }, {
                                text: $scope.setLabel,
                                type: $scope.setButtonType,
                                onTap: function(e) {
                                    var weekday = 0;
                                    if ($scope.checked.sunday) weekday |= 1;
                                    if ($scope.checked.monday) weekday |= 2;
                                    if ($scope.checked.tuesday) weekday |= 4;
                                    if ($scope.checked.wednesday) weekday |= 8;
                                    if ($scope.checked.thursday) weekday |= 16;
                                    if ($scope.checked.friday) weekday |= 32;
                                    if ($scope.checked.saturday) weekday |= 64;
                                    console.log("weekday...." +JSON.stringify(weekday));
                                    return weekday;
                                }
                            }]
                        });
                        myPopup.then(function (res) {
                           console.log("res...." +JSON.stringify(res));
                            if(res !=null){
                                $scope.weekDay3 = parseWeekDay(res);
                                getWeek = res;
                            }

                        });

                    }
                    return true;
                },
                destructiveButtonClicked: function () {
                    console.log('DESTRUCT');
                    return true;
                }
            });
        }

        $scope.showMessage = function (data) {
            dialogsManager.showMessage(data);
        }
        function tab(date4,date5){
            var date1 =parseInt(date4);
            var date2 =parseInt(date5);
            var oDate2 = new Date(); //当前时间
            var now_time = oDate2.getHours()*60+oDate2.getMinutes()
            var alarm_time = date1*60+date2

            var date = oDate2.getFullYear()+"-"+(oDate2.getMonth()+1)+"-"+oDate2.getDate()+" "+date1+":"+date2
            var oDate1 = new Date(date);//设置的时间
            console.log("now_time:"+now_time+ "  alarm_time:"+alarm_time);
            if(alarm_time < now_time){
                console.log('第一个大');
                return false
            } else {
                console.log('第二个大');
                return true
            }
        }

        $scope.onClickFinish = function () {
            console.log("h " + $scope.alarm_setting1.itemSelected +" / m "+$scope.alarm_setting1.monthSelected +" /d "+getWeek )
            if (connectedService.is_connected) {
                alarmId = parseInt(alarmId);
                if(getWeek == 0){
                  if(tab($scope.alarm_setting1.itemSelected,$scope.alarm_setting1.monthSelected)){
                      $scope.y = myDate(0)[0];
                      $scope.m = myDate(0)[1];
                      $scope.d = myDate(0)[2];
                  }else{
                      $scope.y = myDate(1)[0];
                      $scope.m = myDate(1)[1];
                      $scope.d = myDate(1)[2];
                  }
                }else{
                  $scope.y = myDate(0)[0];
                  $scope.m = myDate(0)[1];
                  $scope.d = myDate(0)[2];
                }

                switch (alarmId) {
                    case 1:
                        $scope.alarm_time1 = {
                            year1:$scope.y,
                            month1:$scope.m,
                            day1:$scope.d,
                            hour1: $scope.alarm_setting1.itemSelected,
                            minute1: $scope.alarm_setting1.monthSelected,
                            weekday1: getWeek,
                            isAlarm1:1
                        }
                        console.log('true/$scope.alarm_time1...' + JSON.stringify($scope.alarm_time1));
                        bleService.setOption(dec.id, "cmdSilentWeekDay1", $scope.alarm_time1);
                        userDate.silentYear1 = $scope.y;
                        userDate.silentMonth1 = $scope.m;
                        userDate.silentDay1 = $scope.d;
                        userDate.silentHour1 = $scope.alarm_setting1.itemSelected
                        userDate.silentMinute1= $scope.alarm_setting1.monthSelected
                        userDate.silentWeekDay1= getWeek
                        userDate.alarm1 = true;
                        userService.serialize();
                        break;
                    case 2:
                        $scope.alarm_time2 = {
                            year2:$scope.y,
                            month2:$scope.m,
                            day2:$scope.d,
                            hour2: $scope.alarm_setting1.itemSelected,
                            minute2: $scope.alarm_setting1.monthSelected,
                            weekday2: getWeek,
                            isAlarm2:1
                        }
                        console.log('true/$scope.alarm_time2...' + JSON.stringify($scope.alarm_time2));
                        bleService.setOption(dec.id, "cmdSilentWeekDay2", $scope.alarm_time2);
                        userDate.silentYear2 = $scope.y;
                        userDate.silentMonth2 = $scope.m;
                        userDate.silentDay2 = $scope.d;
                        userDate.silentHour2 = $scope.alarm_setting1.itemSelected
                        userDate.silentMinute2= $scope.alarm_setting1.monthSelected
                        userDate.silentWeekDay2= getWeek
                        userDate.alarm2 = true;
                        userService.serialize();
                        break;
                    case 3:
                        $scope.alarm_time3 = {
                            year3:$scope.y,
                            month3:$scope.m,
                            day3:$scope.d,
                            hour3: $scope.alarm_setting1.itemSelected,
                            minute3: $scope.alarm_setting1.monthSelected,
                            weekday3: getWeek,
                            isAlarm3:1
                        }
                        console.log('true/$scope.alarm_time3...' + JSON.stringify($scope.alarm_time3));
                        bleService.setOption(dec.id, "cmdSilentWeekDay3", $scope.alarm_time3);
                        userDate.silentYear3 = $scope.y;
                        userDate.silentMonth3 = $scope.m;
                        userDate.silentDay3 = $scope.d;
                        userDate.silentHour3 = $scope.alarm_setting1.itemSelected
                        userDate.silentMinute3= $scope.alarm_setting1.monthSelected
                        userDate.silentWeekDay3= getWeek
                        userDate.alarm3 = true;
                        userService.serialize();
                        break;
                }
                $ionicHistory.goBack();
            } else {
                $scope.showMessage($scope.connect_ble);
            }
            console.log('ok')
//            $state.go("silent_time")

        }
    });